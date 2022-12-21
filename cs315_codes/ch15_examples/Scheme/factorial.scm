(define (factorial n)
  (cond ((< n 0) 'negative-number)
        ((<= n 1) 1)
        (else (* n (factorial (- n 1))))))
