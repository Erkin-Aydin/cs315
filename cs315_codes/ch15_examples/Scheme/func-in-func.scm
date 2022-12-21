(define (foo a)
  (define (bar n) (* 2 n))
  (+ 3 (bar a)))
