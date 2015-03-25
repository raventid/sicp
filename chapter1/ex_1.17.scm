;n example for illustrating the algorithm: 3 * 10 = 3 * (2 * (10 / 2)) = 3 * (2 * 5) = 6 * 5 = 6 * (4 + 1) = 6 * 4 + 6 = 6 * (2 * (4 / 2)) + 6 = 6 * (2 * 2) + 6 = 6 * 2 * 2 + 6 = 12 * 2 + 6 = 24 + 6 = 30.
;
Assume double and halve are defined by the language 
 (define (double x) (+ x x)) 
 (define (halve x) (/ x 2)) 
  
 (define (* a b) 
      (cond ((= b 0) 0) 
	             ((even? b) (double (* a (halve b)))) 
		              (else (+ a (* a (- b 1)))))) 
  
 ;; Testing 
 ;;  (* 2 4) 
 ;;   (* 4 0) 
 ;;    (* 5 1) 
 ;;     (* 7 10) 
 
