;  0 AUTHOR and LICENSE
;  1 ABSTRACT
;  2 THE LATEX SUPPORT CODE
;  3 GLOBALS
;  4 THE TANGLE COMMAND
;  5 THE TANGLE FUNCTION
;  6 GCL-READ-FILE (aka read-sequence)
;  7 GCL-HASHCHUNKS
;  8 GCL-EXPAND
;  9 ISCHUNK-LATEX
; 10 ISCHUNK-NOWEB
; 11 ALLCHUNKS
; 12 makeHelpFiles
; 13 makeInputFiles


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 0 AUTHOR and LICENSE

;;; Timothy Daly (daly@axiom-developer.org) 
;;; License: Public Domain

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 1 ABSTRACT

;;; This program will extract the source code from a literate file

;;; A literate lisp file contains a mixture of latex and lisp sources code.
;;; The file is intended to be in one of two formats, either in latex
;;; format or, for legacy reasons, in noweb format.

;;; Latex format files defines a newenvironment so that code chunks
;;; can be delimited by \begin{chunk}{name} .... \end{chunk} blocks
;;; This is supported by the following latex code.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2 THE LATEX SUPPORT CODE

;;; The verbatim package quotes everything within its grasp and is used to
;;; hide and quote the source code during latex formatting. The verbatim
;;; environment is built in but the package form lets us use it in our
;;; chunk environment and it lets us change the font.
;;;
;;; \usepackage{verbatim}
;;; 
;;; Make the verbatim font smaller
;;; Note that we have to temporarily change the '@' to be just a character
;;; because the \verbatim@font name uses it as a character
;;;
;;; \chardef\atcode=\catcode`\@
;;; \catcode`\@=11
;;; \renewcommand{\verbatim@font}{\ttfamily\small}
;;; \catcode`\@=\atcode

;;; This declares a new environment named ``chunk'' which has one
;;; argument that is the name of the chunk. All code needs to live
;;; between the \begin{chunk}{name} and the \end{chunk}
;;; The ``name'' is used to define the chunk.
;;; Reuse of the same chunk name later concatenates the chunks

;;; For those of you who can't read latex this says:
;;; Make a new environment named chunk with one argument
;;; The first block is the code for the \begin{chunk}{name}
;;; The second block is the code for the \end{chunk}
;;; The % is the latex comment character

;;; We have two alternate markers, a lightweight one using dashes
;;; and a heavyweight one using the \begin and \end syntax
;;; You can choose either one by changing the comment char in column 1
 
;;; \newenvironment{chunk}[1]{%   we need the chunkname as an argument
;;; {\ }\newline\noindent%                    make sure we are in column 1
;;; %{\small $\backslash{}$begin\{chunk\}\{{\bf #1}\}}% alternate begin mark
;;; \hbox{\hskip 2.0cm}{\bf --- #1 ---}%      mark the beginning
;;; \verbatim}%                               say exactly what we see
;;; {\endverbatim%                            process \end{chunk}
;;; \par{}%                                   we add a newline
;;; \noindent{}%                              start in column 1
;;; \hbox{\hskip 2.0cm}{\bf ----------}%      mark the end
;;; %$\backslash{}$end\{chunk\}%              alternate end mark (commented)
;;; \par%                                     and a newline
;;; \normalsize\noindent}%                    and return to the document

;;; This declares the place where we want to expand a chunk
;;; Technically we don't need this because a getchunk must always
;;; be properly nested within a chunk and will be verbatim.

;;; \providecommand{\getchunk}[1]{%
;;; \noindent%
;;; {\small $\backslash{}$begin\{chunk\}\{{\bf #1}\}}}% mark the reference

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3 GLOBALS

;;; The *chunkhash* variable will hold the hash table of chunks.
;;;
;;; Every time we find a \begin{chunk}{name} ... \end{chunk} we look
;;; in this hash table. If the ``name'' is not found we add it.
;;; If the name is found, we concatentate it to the existing chunk.

(defvar *chunkhash* nil "this hash table contains the chunks found")

;;; This shows critical information for debugging purposes
(defvar *chunknoise* nil "turn this on to debug internals")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 THE TANGLE COMMAND

;;;
;;; The tangle command does all of the work of extracting code.
;;; For legacy reasons we support 2 syntax forms, latex and noweb
;;;
;;; In latex form the code blocks are delimited by
;;;     \begin{chunk}{name}
;;;     ... (code for name)...
;;;     \end{chunk}
;;;
;;; and referenced by \getchunk{name} which gets replaced by the code

;;; In noweb form the code blocks are delimited by
;;;     <<name>>=
;;;     ... (code for name)...
;;;     @
;;;
;;; and referenced by <<name>> which gets replaced by the code

;;; There are several ways to invoke the tangle function. 
;;;
;;; The first argument is always the file from which to extract code
;;;
;;; The second argument is the name of the chunk to extract
;;;    If the name starts with < then we assume noweb format as in:
;;;        (tangle "clweb.pamphlet" "<<name>>")  <== noweb syntax
;;;    Otherwise we assume latex format as in:
;;;        (tangle "clweb.pamphlet "name")       <== latex syntax (default)
;;;
;;; The standard noweb chunk name is ``*'' but any name can be used.
;;;
;;; The third arument is the name of an output file:
;;;  (tangle "clweb.pamphlet" "clweb.chunk" "clweb.spadfile")



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 5 THE TANGLE FUNCTION

;;; This routine looks at the first character of the chunk name.
;;; If it is a $<$ character then we assume noweb syntax otherwise
;;; we assume latex syntax.
;;;
;;; We initialize the chunk hashtable
;;; then read the file and store each chunk
;;; then we recursively expand the ``topchunk'' to the output stream

(defun tangle (filename topchunk &optional file)
 "Extract the source code from a pamphlet file"
 (let ((noweb? (char= (schar topchunk 0) #\<)))
  (setq *chunkhash* (make-hash-table :test #'equal))
  (when *chunknoise* (format t "PASS 1~%"))
  (gcl-hashchunks (gcl-read-file filename) noweb?)
  (when *chunknoise* (format t "PASS 2~%"))
  (if (and file (stringp file))
   (with-open-file (out file :direction :output)
     (gcl-expand topchunk noweb? out))
   (gcl-expand topchunk noweb? t)))
  (values))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 6 GCL-READ-FILE (aka read-sequence)

;;; This would be read-sequence in ansi common lisp. Here we read
;;; a line, push it onto a stack and then reverse the stack. The
;;; net effect is a list of strings, one per line of the file.

(defun gcl-read-file (streamname)
 "Implement read-sequence in GCL"
 (let (result)
  (with-open-file (stream (open streamname))
   (do (line eof)
      ((eq line 'done) (nreverse result))
    (multiple-value-setq (line eof) (read-line stream nil 'done)) 
    (unless (eq line 'done) (push line result))))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 7 GCL-HASHCHUNKS

;;; gcl-hashchunks gathers the chunks and puts them in the hash table
;;;
;;; if we find the chunk syntax and it is a
;;;   define ==> parse the chunkname and start gathering lines onto a stack
;;;   end    ==> push the completed list of lines into a stack of chunks
;;;              already in the hash table
;;;   otherwise ==> if we are gathering, push the line onto the stack

;;; a hash table entry is a list of lists such as
;;; (("6" "5") ("4" "3") ("2" "1"))
;;; each of the sublists is a set of lines in reverse (stack) order
;;; each sublist is a single chunk of lines. 
;;; there is a new sublist for each reuse of the same chunkname

;;; If the noweb argument is non-nil we assume that we are parsing
;;; using the noweb syntax. A nil argument implies latex syntax.

(defun gcl-hashchunks (lines noweb)
 "Gather all of the chunks and put them into a hash table"
 (let (type name chunkname oldchunks chunk gather)
  (dolist (line lines)
   (if noweb
    (multiple-value-setq (type name) (ischunk-noweb line))
    (multiple-value-setq (type name) (ischunk-latex line)))
   (cond
    ((eq type 'define)
      (when *chunknoise* (format t "DEFINE name=~a~%" name))
      (setq chunkname name)
      (setq gather t))
    ((eq type 'end)
      (when *chunknoise* 
       (format t "END name= ~a chunk=~s~%" chunkname (reverse chunk)))
      (setq oldchunks (gethash chunkname *chunkhash*))
      (setf (gethash chunkname *chunkhash*) (push chunk oldchunks))
      (setq gather nil)
      (setq chunk nil))
    (gather ;; collect lines into the chunk while gather is true
      (push line chunk))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 8 GCL-EXPAND

;;; gcl-expand will recursively expand chunks in the hash table
;;; 
;;; latex chunk names are just the chunkname itself e.g. chunkname
;;; noweb chunk names include the delimiters, e.g: <<chunkname>>

;;; a hash table entry is a list of lists such as
;;; (("6" "5") ("4" "3") ("2" "1"))
;;; so to process the chunk we reverse the main list and
;;; for each sublist we reverse the sublist and process the lines

;;; if a chunk name reference is encountered in a line we call expand
;;; recursively to expand the inner chunkname.

(defun gcl-expand (chunk noweb? file)
 "Recursively expand a chunk into the output stream"
 (let ((chunklist (gethash chunk *chunkhash*)) type name)
  (dolist (chunk (reverse chunklist))
   (dolist (line (reverse chunk))
    (if noweb?
     (multiple-value-setq (type name) (ischunk-noweb line))
     (multiple-value-setq (type name) (ischunk-latex line)))
    (if (eq type 'refer) 
      (progn
       (when *chunknoise* (format t "REFER name=~a~%" name))
       (gcl-expand name noweb? file))
      (format file "~a~%" line))))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 9 ISCHUNK-LATEX

;;; There is a built-in assumption (in the ischunk-* functions)
;;; that the chunks occur on separate lines and that the indentation
;;; of the chunk reference has no meaning.
;;;
;;; ischunk-latex  recognizes chunk names in latex convention
;;;
;;; There are 3 cases to recognize:
;;;  \begin{chunk}{thechunkname}  ==> 'define thechunkname
;;;  \end{chunk}                  ==> 'end nil
;;;  \getchunk{thechunkname}      ==> 'refer thechunkname

(defun ischunk-latex (line)
 "Find chunks delimited by latex syntax"
 (let ((mark (search "chunk" line))      ; is this a line we care about?
       (point 0)
       name 
       (beginstring "\\begin{chunk}{")   ; this is the define marker string
       beginlength
       (endstring "\end{chunk}")         ; this is the end marker string
       (referstring "\getchunk{")        ; this is the refer string
       referlength)
  (setq beginlength (length beginstring))
  (setq referlength (length referstring))
  (when mark
   (cond
    ((setq mark (search beginstring line)) ; recognize define
      (setq point (position #\} line :start (+ mark beginlength)))
      (cond
       ((null point) (values nil nil))
       ((= point 0)  (values nil nil))
       (t
         (setq name (subseq line (+ mark beginlength) point)) 
         ;(print (list 'ischunk-latex 'define name))
         (values 'define name))))
    ((setq mark (search endstring line))     ; recognize end
       ;(print (list 'ischunk-latex 'end))
       (values 'end nil))
    ((setq mark (search referstring line))         ; recognize reference
      (setq point (position #\} line :start (+ mark referlength)))
      (cond
       ((null point) (values nil nil))
       ((= point 0)  (values nil nil))
       (t
         (setq name (subseq line (+ mark referlength) point)) 
         ;(print (list 'ischunk-latex 'refer name))
         (values 'refer name))))
    (t (values nil nil))))))
  


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 10 ISCHUNK-NOWEB

;;; ischunk-noweb recognizes chunk names using the noweb convention
;;;
;;; There are 3 cases to recognize:
;;;  <<thechunkname>>=  ==> 'define thechunkname
;;;  @                  ==> 'end nil
;;;  <<thechunkname>>   ==> 'refer thechunkname

(defun ischunk-noweb (line)
 "Find chunks delimited by noweb syntax"
 (let ((len (length line)) (mark (position #\> line)) (point 0))
  (cond
   ((and mark                    ; recognize define
         (> len (+ mark 2))
         (char= #\< (schar line 0))
         (char= #\< (schar line 1))
         (char= #\> (schar line (+ mark 1)))
         (char= #\= (schar line (+ mark 2))))
     ;(print (list 'define (subseq line 0 (+ mark 2))))
     (values 'define (subseq line 0 (+ mark 2))))
   ((and mark                    ; recognize reference
         (> len (+ mark 1))
         (char= #\> (schar line (+ mark 1))))
     (setq point (position #\< line))
     (if
      (and point
           (< point (- mark 2))
           (char= #\< (schar line (+ point 1))))
        (values 'refer (subseq line point (+ mark 2)))
        (values 'noise nil)))
    ((and (> len 0)                ; end chunk
          (char= #\@ (schar line 0)))
      (values 'end nil))
    (t (values nil nil)))))
  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 11 allchunks
;;; 
;;; allchunks will make a single pass over a book extracting any chunk
;;; that fits the PATTERN from the FROMFILE to the TODIR. The chunk
;;; format is either noweb (if true) or latex (if false).
;;;
;;; allchunks takes 4 arguments,
;;; the PATTERN (a string like ".help>>"
;;; the FROMFILE (a string like "/axiom/books/bookvol5.pamphlet")
;;; the TODIR (a string like "/axiom/mnt/ubuntu/doc/spadhelp")
;;; and a boolean NOWEB? (true is noweb format chunks, false is latex style)
;;;
;;; a chunk name is expected to be of the form:
;;; <<FROMFILE.PATTERN>>=
;;; which means that a chunk matching the pattern (e.g. ".input>>") 
;;; will be extracted to the file TODIR/FROMFILE.PATTERN
;;; 
;;; This is used for <<foo.help>> and <<foo.input>> file extraction.
;;; allchunks is used to extract help files and input files in a single
;;; pass over the books. Since there are hundreds of input files and
;;; help files this is a significant speedup.

(defun allchunks (pattern fromfile todir noweb?)
  (setq *chunkhash* (make-hash-table :test #'equal))
  (when *chunknoise* (format t "PASS 1~%"))
  (gcl-hashchunks (gcl-read-file fromfile) noweb?)
  (when *chunknoise* (format t "PASS 2~%"))
  (maphash #'(lambda (key value)
              (if (search pattern key)
               (let ((filename key) helpfile)
                (when noweb? (setq filename (subseq key 2 (- (length key) 2))))
                (setq helpfile (concatenate 'string todir "/" filename))
                (with-open-file (out helpfile :direction :output)
                 (format t "extracting ~a~%" helpfile)
                 (gcl-expand key noweb? out)))))
       *chunkhash*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 12 makeHelpFiles
;;;
;;; The makeHelpFiles function creates all of the help files in a single
;;; pass over the file. The usual method of extracting each individual
;;; help file requires hundreds of passes over the file.
;;;
;;; An example call is:
;;;
;;; (makeHelpFiles)
;;;
;;; This will find all of the .help chunks in books of interest
;;; and write each chunk to the target directory in its own filename.
;;; So if a chunk name is <<somedomain.help>> the above call will create
;;; the file "/tmp/help/somedomain.help" containing the chunk value.

;;; Help documentation for algebra

;;; The help documentation for algebra files lives within the algebra
;;; pamphlet. The help chunk contains the name of the domain, thus:

;;; <<thisdomain.help>>=
;;; ====================================================================
;;; thisdomain examples
;;; ====================================================================
;;; 
;;;    (documentation for this domain)
;;; 
;;;   examplefunction foo
;;;    output
;;;                 Type: thetype
;;; 
;;; See Also:
;;; o )show thisdomain
;;; o $AXIOM/bin/src/doc/algebra/thisfile.spad.dvi
;;; 
;;; @

;;; The .help files are automatically extracted by code in books/tangle.lisp
;;; and placed in the directory \verb|${HELP}|.
;;; 
;;; The documentation starts off with the domain enclosed in two lines
;;; of equal signs. The documentation is free format. Generally the
;;; functions are indented two spaces, the output is indented 3 spaces,
;;; and the Type field has been moved toward the center of the line.
;;; 
;;; The ``See Also:'' section lists the domain with the ``show'' command
;;; and the path to the source file in dvi format.

#+:GCL
(defun makeHelpFiles ()
 (let ((AXIOM (si::getenv "AXIOM")) (BOOKS (si::getenv "BOOKS")) HELP PAT)
  (setq HELP (concatenate 'string AXIOM "/doc/spadhelp"))
  (setq PAT ".help")
  (allchunks PAT (concatenate 'string BOOKS "/bookvol5.pamphlet") HELP nil)
  (allchunks PAT (concatenate 'string BOOKS "/bookvol10.2.pamphlet") HELP nil)
  (allchunks PAT (concatenate 'string BOOKS "/bookvol10.3.pamphlet") HELP nil)
  (allchunks PAT (concatenate 'string BOOKS "/bookvol10.4.pamphlet") HELP nil)
  (allchunks PAT
   (concatenate 'string BOOKS "/bookvol10.5.pamphlet") HELP nil)
  (values)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 13 makeInputFiles
;;;
;;; The makeInputFiles function creates all of the input files in a single
;;; pass over the file. The usual method of extracting each individual
;;; input file requires hundreds of passes over the file.
;;;
;;; An example call is:
;;;
;;; (makeInputFiles)
;;;
;;; This will find all of the .input chunks in the books
;;; and write each chunk to the target directory in its own filename.
;;; So if a chunk name is {somedomain.input} the above call will create
;;; the file "/tmp/help/somedomain.input" containing the chunk value.

#+:GCL
(defun makeInputFiles ()
 (let ((SPD (si::getenv "SPD")) (BOOKS (si::getenv "BOOKS")) INPUT PAT)
  (setq INPUT (concatenate 'string SPD "/int/input"))
  (setq PAT ".input")
  (allchunks PAT (concatenate 'string BOOKS "/bookvol10.2.pamphlet") INPUT nil)
  (allchunks PAT (concatenate 'string BOOKS "/bookvol10.3.pamphlet") INPUT nil)
  (allchunks PAT (concatenate 'string BOOKS "/bookvol10.4.pamphlet") INPUT nil)
  (allchunks PAT
   (concatenate 'string BOOKS "/bookvol10.5.pamphlet") INPUT nil)
  (values)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 14 makeXHTMLFiles
;;;
;;; The makeXHTMLFiles function creates all of the xhtml files in a single
;;; pass over the file. The usual method of extracting each individual
;;; input file requires hundreds of passes over the file.
;;;
;;; An example call is:
;;;
;;; (makeXHTMLFiles)
;;;
;;; This will find all of the .xhtml chunks in the books
;;; and write each chunk to the target directory in its own filename.
;;; So if a chunk name is {somedomain.xhtml} the above call will create
;;; the file "/somedomain.xhtml" containing the chunk value.

#+:GCL
(defun makeXHTMLFiles ()
 (let ((MNT (si::getenv "MNT")) (BOOKS (si::getenv "BOOKS")) INPUT PAT)
  (setq INPUT (concatenate 'string MNT "/doc"))
  (setq PAT ".xhtml")
  (allchunks PAT (concatenate 'string BOOKS "/bookvol11.pamphlet") INPUT nil)
 (values)))




