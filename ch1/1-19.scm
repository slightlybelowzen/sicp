; Tpq(a, b)
;  a1 = bq + aq + ap
;  b1 = bp + aq
;  Tpq(a1, b1) 
;   a2 = b1q + a1q + a1p
;   a2 = (bp + aq)q + (bq + aq + ap)q + (bq + aq + ap)p
;   a2 = bpq + aq2 + bq2 + aq2 + apq + bpq + aqp + ap2
;   a2 = bq2 + 2bpq + bp2 + aq2 + 2apq + ap2
;   a2 = b(q2 + 2pq + p2) + a(q2 + p2 + 2pq)
;   a2 = b(p + q)2 + a(p + q)2
;   b2 = b1p + a1q
;   b2 = (bp + aq)p + (bq + aq + ap)q
;   b2 = bpq + apq + bq2 + aq2 + apq
;   b2 = b(pq + q2) + a(2pq + q2)
; Tp'q'(a, b)
;  a1 = bq' + aq' + ap'
;  b1 = bp' + aq'

; a1 = a2
; b1 = b2
; bq' + aq' + ap' = b(p + q)2 + a(p + q)2
; bp' + aq' = b(pq + q2) + a(2pq + q2) 
; p' = p2 + q2
; q' = 2pq + q2

; this is ridiculously cool and ridiculously fast
(define (fib n)
  (define (iter a b p q count)
    (cond 
      ((= count 0) b)
      ((even? count)
        (iter 
          a
          b
          (+ (* p p) (* q q))
          (+ (* q q) (* 2 p q))
          (/ count 2)
        )
      )
      (else 
        (iter 
          (+ (* b q) (* a q) (* a p))
          (+ (* b p) (* a q))
          p
          q
          (- count 1)
        )
      )
    )
  )
  (iter 1 0 0 1 n)
)
