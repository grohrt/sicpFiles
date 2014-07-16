(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
      
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
      
(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
         
(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum cube a inc b))

(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))

(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2)))) 
       a 
       (lambda (x) (+ x 4)) 
       b))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f 
          (+ a (/ dx 2.0)) 
          add-dx 
          b) 
     dx))

(define (letEx x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (* a a))
       (* y b)
       (* a b))))
  

