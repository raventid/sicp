;; ex 1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))


;sqrt-iter will never terminate.
;The first time new-if is called it is passed two arguments, guess and (sqrt-iter (improve guess x) x).
;Scheme uses applicative order evaluation and so another call to sqrt-iter will be evaluated resulting in the following behaviour which won’t terminate:
;sqrt-iter
;  new-if
;    sqrt-iter
;      new-if
;        ...
