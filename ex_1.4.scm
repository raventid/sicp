(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 10 4)
; 14
(a-plus-abs-b 10 -4)
;14
(a-plus-abs-b -10 4)
;-6
(a-plus-abs-b -10 -4)
;-6
