(define (abs1 x)
  (if
    (< x 0)
    (- x)
    x
  )
)

(define (abs2 x)
  (cond
    ((< x 0) (- x))
    (else x)
  )
)
