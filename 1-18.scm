(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-iter-* a b)
  (define (fast-iter-inner-* a b product)
    (cond
      ((= b 0) 0)
      ((= b 1) (+ product a))
      ((even? b) (fast-iter-inner-* (double a) (halve b) product))
      (else (fast-iter-inner-* a (- b 1) (+ product a)))
    )
  )
  (fast-iter-inner-* a b 0)
)

(define (even? n)
  (= 0 (remainder n 2))
)
