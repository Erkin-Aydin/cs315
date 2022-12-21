(define (sum-of-products lst)
  (cond ((null? lst) 0)
	((apply + (map multiply lst)))))

(define (multiply lst)
  (eval (cons '* lst)))

(define a '((3 5) (2 4 7) (6 2)))

(display (sum-of-products a))
(newline)


 
