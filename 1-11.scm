(define (f-rec n)
  (if
    (< n 3)
    n
    (+
      (f-rec (- n 1))
      (* 2 (f-rec (- n 2)))
      (* 3 (f-rec (- n 3)))
    )
  )
)

; f(n) = f(n - 1) + 2 * f(n -2) + 3 * f(n - 3)
; 0, 1, 2, 3, 4, 11, 25, 59, ...)
; 
(define (f-iter n)
  (f-iter-inner n)
)

(define (f-iter-inner n))
