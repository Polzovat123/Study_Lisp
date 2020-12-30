(define a 1)
(define b 2)
(define c 3)

(define (squear x) (* x x))

(define (sum x y) (+ (squear x) (squear y)))

(define (compare a b) (if (> a b) a b)

(define (bigger a b c) ((compare a (compare b c))))

(define (second_bigger a b c) (cond ((= a (bigger a b c)) (compare b c))
                                    ((= b (bigger a b c)) (compare a c))
                                    ((= c (bigger a b c)) (compare a b))))

(define (task_func a b c) (sum (bigger a b c) (second_bigger a b c)))

(task_func a b c)
