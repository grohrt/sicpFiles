(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (< x 0) (- x)
              x))
              
(define (square x)
  (* x x))
  
(define (sqrt x)
  (define initial_guess 1.0)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (sqrt-iter initial_guess))  

;(define (sqrt x)
;  (define deriv
;    (lambda (f)
;      (lambda (f)
;        (/ (- (f (+ x 0.0001)) (f x))
;           dx))))
;  (define (newton f guess)
;    (define df (deriv f))
;    (fixed-point 
;      (lambda(x) (- x (/ (f x) (df x)))
;      guess))
;  (newton (lambda (y) (- x (square y)))
;          1))