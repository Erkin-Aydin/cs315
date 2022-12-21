(define (sum-of-squares num-list)
  (sos-helper 0 num-list))

(define (sos-helper sum num-list)
  (if (null? num-list) 
      sum
      (sos-helper (+ sum (* (car num-list) (car num-list))) 
		  (cdr num-list))))

(define a '(3 1 5))
(display (sum-of-squares a))
(newline)
