;;; Quadrescence:
;;; First, tell me why this can't be a function.
;;; Then implement it as a macro. --> A procedure called
;;; SET-IF! such that (set-if! pred sym val) sets the value of SYM to VAL
;;; only if PRED is true. Otherwise, it does nothing.
;;; (or if you want, otherwise, it just gives back NIL)

(define-syntax set-if!
  (syntax-rules ()
    ((_ pred sym val)
     (if pred
	   (set! sym val)))))

(define a '())

(set-if! #f a "Hello")

(print "The following should be nil")
(print a)

(set-if! #t a "Hello")

(print "Now it should be \"Hello\"")
(print a)

