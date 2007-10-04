(in-package "BOOT")

(defun |Open| (path)
  (si::open path :direction :input :if-exists nil :if-does-not-exist nil)
  )

(defvar |StandardOutput| *standard-output*)

(defvar  |NewLine| '#\NewLine)

;; some regexp stuff

(defun |StringMatch| (s1 s2)
 (si::string-match s1 s2)
 )

(defun |ListMatches| (&rest args)
 (si::list-matches args)
 )

(defun |MatchBeginning| (i)
 (si::match-beginning i)
 )

(defun |MatchEnd| (i)
 (si::match-end i)
 )

;; the socket stuff

(defun |SiSock| (p spadfn)
;;  (format t "SiSocket-1")
 (si::socket p :server
             (function
              (lambda (w) (SPADCALL w spadfn) )
              )
             :daemon nil)
 )

(defun |SiListen| (s)
;;  (format t "SiListen-1")
 (si::listen s)
 )
(defun |SiAccept| (s) (si::accept s))
(defun |SiCopyStream| (q s) (si::copy-stream q s))


;;; replace-entities is a function that takes a string and 
;;; returns a new string that has special html entities replaced.
;;;
;;; this function is used in axserver.spad to replace characters that
;;; occur in standard output with characters that the browser needs.
;;;
;;; the algorithm constructs a new string by computing the additional
;;; space needed by the replacement characters, adding that to the
;;; input string length. Thus the new string is just long enough
;;; to hold the original string stuffed with expanded entity codes.
;;;
;;; at the present time it only looks for and replaces the 
;;;    <     with &#60;
;;;  newline with <br/>
;;;
;;; to add a new code you must
;;;  * add a multiple to the resultlen
;;;      (so if the replacement character is 5 characters long
;;;       we need to add 4 additional positions, eg. < becomes &#60;)
;;;  * add a branch to the cond routine to replace the old character
;;;    with new ones. 
;;;      (note that you need to increment j, the result string pointer
;;;       for all but the last character added since the loop handles that)
;;;
;;; The result is a new string that is html-entity friendly.

(defun replace-entities (str)
 (let (resultlen result (strlen (length str)))
  (setq resultlen 
   (+ strlen 
      (* 4 (count #\< str))           ; <       ==> &#60;
      (* 4 (count #\newline str))))   ; newline ==> <br/>
  (setq result (make-string resultlen))
  (do ((i 0 (+ i 1)) (j 0 (+ j 1)))
      ((= i strlen) result)
   (cond 
    ((char= (char str i) #\<)
     (setf (char result j) #\&) (incf j)
     (setf (char result j) #\#) (incf j)
     (setf (char result j) #\6) (incf j)
     (setf (char result j) #\0) (incf j)
     (setf (char result j) #\;))
    ((char= (char str i) #\newline)
     (setf (char result j) #\<) (incf j)
     (setf (char result j) #\b) (incf j)
     (setf (char result j) #\r) (incf j)
     (setf (char result j) #\/) (incf j)
     (setf (char result j) #\>))
    (t
     (setf (char result j) (char str i)))))))

