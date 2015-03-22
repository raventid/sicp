 ;; ex 1.16 
  
 (define (square x)
   (* x x)) 
  
 (define (fast-expt b n) 
   (define (iter a b n) 
     (cond ((= n 0) a) 
           ((even? n) (iter a (square b) (/ n 2))) 
           (else (iter (* a b) b (- n 1))))) 
   (iter 1 b n)) 
  
 (define (square x) (* x x)) 
  
 ;; Testing 
  
 (fast-expt 2 0) 
 (fast-expt 2 1) 
 (fast-expt 2 2) 
 (fast-expt 2 4) 
 (fast-expt 2 8) 
 (fast-expt 2 16) 
  
 (fast-expt 2 3) 
 (fast-expt 2 5) 
 (fast-expt 2 10) 
 (fast-expt 2 20) 
