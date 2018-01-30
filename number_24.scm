;;; CHALLENGE 24
;;;
;;; Given a list like (1 1 1 2 2 3 2 3 3), return the run length
;;; encoding, which is a list of (element count) pairs:
;;;
;;; ((1 3) (2 2) (3 1) (2 1) (3 2))
;;;
;;; Use your language's FOLD construct and/or write in a functional
;;; fashion.

(define (rle items)
  (reverse (foldl (lambda (x y)
		    (cond ((null? x)
			   (list (list y 1)))
			  ((= (caar x) y)
			   (cons (list y (+ 1 (cadar x)))
				 (cdr  x)))
			  (else
			   (cons (list y 1) x))
			  ))
		  '() items)))

(define items '(1 1 1 2 2 3 2 3 3))

(print "Here is a list:")
(print items)

(print "The run length encoding of which is:")
(print (rle items))

;; That was fun. Not so happy about the reverse though, but I will try
;; to fix this later.
