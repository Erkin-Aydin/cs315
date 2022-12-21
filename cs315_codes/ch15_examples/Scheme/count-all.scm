(define (count x)
  (cond ((null? x) 0)
        ((atom? x) 1)
        (else (+ (count (car x)) (count (cdr x))))))

(define (atom? x)
   (not (or (list? x) (pair? x))))
