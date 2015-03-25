;n example for illustrating the algorithm: 3 * 10 = 3 * (2 * (10 / 2)) = 3 * (2 * 5) = 6 * 5 = 6 * (4 + 1) = 6 * 4 + 6 = 6 * (2 * (4 / 2)) + 6 = 6 * (2 * 2) + 6 = 6 * 2 * 2 + 6 = 12 * 2 + 6 = 24 + 6 = 30.
;
Assume double and halve are defined by the language 
 (define (double x) (+ x x)) 
 (define (halve x) (/ x 2)) 
  
 (define (* a b) 
      (cond ((= b 0) 0) 
	             ((even?  (double (* a (halve b)))) 
		              (else (+ a (* a (- b 1)))))) 
  
; Testing 
;  (* 2 4) 
;  (* 4 0) 
;  (* 5 1) 
;  (* 7 10)     
;
;using tail recursion achieves better space order of growth of theta(1)

 (define (fast-mult-by-add a b) 
   (define (double x) (+ x x)) 
   (define (halve x) (/ x 2)) 
    
   (define (helper a b product) ;; "add a" b times 
     (cond ((= b 0) product) 
           ((even? b) (helper (double a) (halve b) product)) 
           (else (helper a (- b 1) (+ a product))))) 
   (helper a b 0)) 
