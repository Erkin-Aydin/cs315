(define (fact-helper n factpartial)
   (if (<= n 0)
       factpartial
       (fact-helper (- n 1) (* n factpartial))))

(define (factorial n)
    (fact-helper n 1))
