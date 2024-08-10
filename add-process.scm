(define (plus1 a b)
  (if 
    (= a 0) 
    b 
    (inc (plus1 (dec a) b))
  )
)

; (plus1 4 5)
; (if (= 4 0) 5 (inc (plus1 (dec 4) 5))
; (inc (if ...))
; procedure generates a linear recursive process

(define (plus2 a b)
  (if
    (= a 0)
    b
    (plus2 (dec a) (inc b))
  )
)

; (plus2 (dec 4) (inc 5))
; (plus2 3 6)
; (plus2 (dev 3) (inc 6))
; ...
; procedure generates a linear iterative process
