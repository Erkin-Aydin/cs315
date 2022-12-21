(define (sum-of-squares num-list)
  (if (null? num-list) 
      0
      (+ (* (car num-list) (car num-list))
	 (sum-of-squares (cdr num-list)))))

(define a '(3 1 5))
(display (sum-of-squares a))
(newline)


