; normal versus applicative order evaluation

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y)
)

; applicative
; evaluate subexpressions first
; (test 0 (p))
; (test 0 (p))
; infinite loop

; normal
; expand operator first
; (test 0 (p))
; (if (= 0 0) 0 (p))
; 0
