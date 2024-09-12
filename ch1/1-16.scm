(define (exponent-iter b n)
  (exponent-iter-inner b n 1)
)

(define (exponent-iter-inner b counter product)
  (cond
    ((= counter 0) product)
    ((even? counter) (exponent-iter-inner (square b) (/ counter 2) product))
    (else (exponent-iter-inner b (- counter 1) (* b product)))
  )
)

(define (even? n)
  (= (remainder n 2) 0)
)
