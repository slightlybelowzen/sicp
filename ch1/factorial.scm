(define (factorial n)
  (fact-iter 1 1 n)
)

(define (fact-iter counter product n)
  (if
    (> counter n)
    product
    (fact-iter (+ counter 1) (* counter product) n)
  )
)
