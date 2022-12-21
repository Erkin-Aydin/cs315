(define (leap? year)
   (cond
     ((zero? (modulo year 400)) #T)
     ((zero? (modulo year 100)) #F)
     (else (zero? (modulo year 4)))
))
