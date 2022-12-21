(define (max-of-list lst)
  (cond ((null? lst) 'empty-list)
	((null? (cdr lst)) (car lst))
	(else (max (car lst) (max-of-list (cdr lst))))))
