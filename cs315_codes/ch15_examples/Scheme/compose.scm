(define (compose . fs)
  (if (null? fs) (lambda (x) x) 
    ; if no argument is given, evaluates to the identity function
      (lambda (x) 
              ((car fs) 
               ((apply compose (cdr fs)) x)))))
