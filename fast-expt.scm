(define (square x)
    (* x x)) 
 
(define (even? n)
  (= (remainder n 2) 0)) 
 
;repl.it can't invoke remainder operation have to set up emacs with mit-scheme:)

(define (fast-expt b n)
    (cond ((= n 0) 1)
          ((even? n) (square (fast-expt (/ n 2)))
          (else (* b (fast-expt b (- n 1))))
)))
  

(fast-expt x)
