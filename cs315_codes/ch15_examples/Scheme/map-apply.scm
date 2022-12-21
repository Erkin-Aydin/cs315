(define (count-zeros numbers)
  (apply + (map (lambda (n) (if (zero? n) 1 0)) numbers)))

