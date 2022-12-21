(define (adder a_list)
   (cond
      ((null? a_list) 0)
      (else (eval (cons '+ a_list)))
))
