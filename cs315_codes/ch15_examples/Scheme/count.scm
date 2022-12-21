(define (count x)
  (cond ((null? x) 0)
        (else (+ 1 (count (cdr x))))))
