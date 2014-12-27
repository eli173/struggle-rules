

(defvar verts '(
		"\a1"
		"\b1" "\b2"
		"\c1" "\c2" "\c3"
		"\d1" "\d2" "\d3" "\d4"
		"\e1" "\e2" "\e3" "\e4" "\e5"
		"\f1" "\f2" "\f3"
		"\f4" "\f5" "\f6"
		"\g1" "\g2" "\g3" "\g4" "\g5"
		"\h1" "\h2" "\h3"
		"\h4" "\h5" "\h6"
		"\i1" "\i2" "\i3" "\i4" "\i5"
		"\j1" "\j2" "\j3" "\j4"
		"\k1" "\k2" "\k3"
		"\l1" "\l2"
		"\m1"))

(defvar verts2  (mapcar #'(lambda (s)
			    (concatenate 'string "\\" s))
			verts))

(setf verts2 (mapcar #'(lambda (s) (concatenate 'string "\\" s)) verts))

(defvar chars '(#\a #\b #\c #\d #\e #\f))

(defvar nums '(#\1 #\2 #\3 #\4 #\5 #\6))

(defun replace-things (input from to)
  (cond ((null from) input)
	(t (replace-things 
	    (mapcar 
	     #'(lambda (el) 
		 (substitute (car to) (car from) el))
	     input)
	    (cdr from) 
	    (cdr to)))))


(defvar verts3 (replace-things verts2 nums chars))

(defvar the-verts (replace-things (remove #\\ verts) nums chars))

(load "~/programming/lisp/drawers/drawers")

(defvar coords (mapcar #'(lambda (cc) (cons (car cc) (cons (cdr cc) nil))) (drawers:gen-board)))

; i'm dumb... just use format string...

(defvar format-string "\\newcommand{\\node~A}{~S}~%")

(defvar format-string-2 "\node (~A) at ~S {};~%")

(defun get-commands ()
  (mapcar #'(lambda (v c)
	      (format t format-string v c))
	  the-verts coords))
(defun testing () (+ 1 1))


(defun get-nodes ()
  (mapcar #'(lambda (v c)
	      (format t format-string-2 v c))
	  (remove #\\ verts) coords))
