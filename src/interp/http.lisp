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



