;;; CHALLENGE 1
;;;
;;; Define a macro THUNK which will wrap the body of the macro inside
;;; a lambda. That is, define
;;;
;;; (THUNK
;;;   <body>)
;;;
;;; so that we get
;;;
;;; (lambda () <body>)

(define-syntax THUNK
  (syntax-rules ()
    ((_ f)
     (lambda () f))))

(define test-thunk
  (THUNK
   (print "Hello")))

(test-thunk)


