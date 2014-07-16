(define (deriv expr var)
  (cond ((Constant? expr var) 0)
        ((Same-var? expr var) 1)
        ((Sum? expr)
         (make-sum (deriv (a1 expr) var)
                   (deriv (a2 expr) var)))
        ((Product? expr)
         (make-sum 
            (make-product (m1 expr) (deriv (m2 expr) var))
            (make-product (m2 expr) (deriv (m1 expr) var))))
        ... more conditions here

        
(define (constant? expr var)
  (and (atom? expr)
       (not (eq? expr var))))

(define (same-var? expr var)
  (and (atom? expr)
       (eq? expr var)))

(define (sum? expr)
  (and (not (atom? expr))
       (eq (car expr) '+)))
       
(define (make-sum a1 a2)
  (list ('+ a1 a2))
  
(define (make-sum2 a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2)) (+ a1 a2))
        (else (list '+ a1 a2))))
  
(define a1 cadr)
(define a2 caddr)

(define (product? expr)
  (and (not atom? expr)
       (eq? (car expr) /*)))
       
(define (make-product m1 m2)
  (list /* m1 m2))

(define m1 cadr)
(define m2 caddr)