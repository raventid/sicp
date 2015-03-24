(define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001))

;For small numbers, good-enough? will always return true because the difference between x and guess (even if they differ by orders of magnitude) will always be smaller than the tolerance value 0.001 used in the test
;
(good-enough? 0.000002 0.0000000008)
; #t
;
;For large number, good-enough? will never return true because the representation of floating point numbers is not accurate enough for their difference to ever fall below the tolerance value of 0.001.
