; 1
; 1 1
; 1 2 1
; 1 3 3 1
; 1 4 6 4 1

; pascal(i, j) <- pascal(i - 1, j - 1) + pascal(i - 1, j)

(define (pascal i j)
  (if
    (or (< i 1) (= j i) (= j 0))
    1
    (+
      (pascal (- i 1) (- j 1))
      (pascal (- i 1) j)
    )
  )
)
