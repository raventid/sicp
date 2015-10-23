;; ex 1.4
;; summ a and b where b is always ansolute value of variable

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
