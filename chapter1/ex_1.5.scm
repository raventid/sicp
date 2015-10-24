;; ex 1.5

(define (p)(p))
(define (test x y)
  (if (= x 0)
          0
	  y))

;applicative order evaluation: (test 0 (p)) => infinite loop)
;normal order evaluation: (test 0 (p)) => 0
