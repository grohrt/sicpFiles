; data structures in lisp = list structures
; particularly lisp can create pairs called cons
; (cons x y) constructs a pair
; (car p) returns the first part of the pair p
; (cdr p) returns the second part of the pair p

(define (make-rat x y)
  (cons x y))
  
; better implementation of make-rat
; (define (make-rat x y)
;   (let ((g (gcd n d)))
;     (cons (/n g) (/ d g))))
; need to implement gcd though

(define (numer p)
  (car p))
  
 (define (denom p)
  (cdr p))

(define (add-rat x y)
  (make-rat
    (+ (* (numer x) (denom y))
       (* (numer y) (denom x)))
    (* (denom x) (denom y)))) 
    
(define (sub-rat x y)
  (make-rat
    (- (* (numer x) (denom y))
       (* (numer y) (denom x)))
    (* (denom x) (denom y)))) 