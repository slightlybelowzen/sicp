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
; f(5) = 25
; a b c count <- 0 1 2 5
; a b c count <- 1 2 4 4
; a b c count <- 2 4 11 3
; a b c count <- 4 9 25 2
; a b c count <- 9 25 _ 1
; a b c count <- 25 _ _ 0 
(define (f-iter n)
  (f-iter-inner 0 1 2 n)
)

(define (f-iter-inner a b c count)
  (if
    (= count 0)
    a
    (f-iter-inner b c (+ c (* 2 b) (* 3 a)) (- count 1))
  )
)
