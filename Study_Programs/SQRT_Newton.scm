(define (sqrt_itt number y) 
  (if ((good-enough? y number)) (y) 
         (sqrt_itt number (new number y)))

(define (new x y) 
        (/ (+ x y) 2))

(define (good_enough? x y) 
        (if (< (abs(- (pow2 x) y)) 0.001) 
            #t 
            #f))         

(define (pow2 x) (* x x))

(define (abs x) 
        (cond ((< x 0) (- x))
              ((#t) x)))

(define (sqrt x ) 
        (sqrt_itt x 1.0))      

(sqrt 4)     
