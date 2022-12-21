(define (foo-aux lst acc )
  (cond ((null? lst) acc)
	((list? (car lst))
	 (foo-aux (append (car lst) ;; tail
			  (cdr lst)) acc))
	(else
	 (foo-aux (cdr lst) ;; tail
		  (* acc (car lst))))))

(define (foo lst) (foo-aux lst 1) )

(display (foo '(5 (2 3 (4 ((((1 2)))) 7) ) 8)))
