(define (foo n)
  (define (double m) (* n m))
  (double (+ 2 n)))
