(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
      
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))