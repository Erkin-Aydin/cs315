(define (isEven n) 
  (cond ((> n 0) (isOdd (- n 1)))
	(else #t)))

(define (isOdd n)
  (cond ((> n 0) (isEven (- n 1)))
	(else #f)))
