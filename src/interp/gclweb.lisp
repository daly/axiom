(in-package "BOOT")
;;; This program will extract the source code from a literate file

;;; The *chunkhash* variable will hold the hash table of chunks.

(defvar *chunkhash* nil)

;  (tangle "clweb.pamphlet" "<<*>>")  <== noweb syntax
;  (tangle "clweb.pamphlet "*")       <== latex syntax (default)

;;; tangle takes the name of a file and the chunk to expand
;;; 
(defun tangle (filename topchunk)
  (setq *chunkhash* (make-hash-table :test #'equal))
  (gcl-hashchunks (gcl-read-file filename))
  (gcl-expand topchunk))

;;; gcl-read-file
;;;
;;; This would be read-sequence in ansi common lisp. Here we read
;;; a line, push it onto a stack and then reverse the stack. The
;;; net effect is a list of strings, one per line of the file.

(defun gcl-read-file (streamname)
 (let (result)
  (with-open-file (stream (open streamname))
   (do (line eof)
      ((eq line 'done) (nreverse result))
    (multiple-value-setq (line eof) (read-line stream nil 'done)) 
    (unless (eq line 'done) (push line result))))))

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

(defun gcl-hashchunks (lines)
 (let (type name chunkname oldchunks chunk gather)
  (dolist (line lines)
   (multiple-value-setq (type name) (ischunk-latex line))
   (cond
    ((eq type 'define)
      (setq chunkname name)
      (setq gather t))
    ((eq type 'end)
      ;(format t "name= ~a chunk=~s~%" chunkname chunk)
      (setq oldchunks (gethash chunkname *chunkhash*))
      (setf (gethash chunkname *chunkhash*) (push chunk oldchunks))
      (setq gather nil)
      (setq chunk nil))
     (gather 
      (push line chunk))))))

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

(defun gcl-expand (chunk)
 (let ((chunklist (gethash chunk *chunkhash*)) type name)
  (dolist (chunk (reverse chunklist))
   (dolist (line (reverse chunk))
    (multiple-value-setq (type name) (ischunk-latex line))
    (if (eq type 'refer) 
      (gcl-expand name)
      (format t "~a~%" line))))))

;;; There is a built-in assumption (in the ischunk-* functions)
;;; that the chunks occur on separate lines and that the indentation
;;; of the chunk reference has no meaning.
;;;
;;; ischunk-latex  recognizes chunk names in latex convention
;;;
;;; There are 3 cases to recognize:
;;;  \begin{chunk}{thechunkname}  ==> 'define thechunkname
;;;  \end{chunk}                  ==> 'end nil
;;;  \chunk{thechunkname}         ==> 'refer thechunkname

(defun ischunk-latex (line)
 (let ((len (length line)) 
       (mark (search "chunk" line))
       (point 0)
       name preline postline)
  (when mark
   (cond
    ((setq mark (search "\\begin{chunk}{" line)) ; recognize define
      (setq point (position #\} line :start (+ mark 14)))
      (cond
       ((null point) (values nil nil))
       ((= point 0)  (values nil nil))
       (t
         (setq name (subseq line (+ mark 14) point)) 
         ;(print (list 'define name))
         (values 'define name))))
    ((setq mark (search "\end{chunk}" line))     ; recognize end
       ;(print (list 'end nil))
       (values 'end nil))
    ((setq mark (search "\chunk{" line))         ; recognize reference
      (setq point (position #\} line :start (+ mark 6)))
      (cond
       ((null point) (values nil nil))
       ((= point 0)  (values nil nil))
       (t
         (setq name (subseq line (+ mark 6) point)) 
         ;(print (list 'refer name))
         (values 'refer name))))
    (t (values nil nil))))))
  
;;; ischunk-noweb recognizes chunk names using the noweb convention
;;;
;;; There are 3 cases to recognize:
;;;  <<thechunkname>>=  ==> 'define thechunkname
;;;  @                  ==> 'end nil
;;;  <<thechunkname>>   ==> 'refer thechunkname

(defun ischunk-noweb (line)
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
  
 

