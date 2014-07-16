

(define (make-vector x y)
  (cons x y))

(define (xcor p)
  (car p))
  
(define (ycor p)
  (cdr p))
  
(define (make-segment p1 p2)
  (cons p1 p2))

(define (seg-start s)
  (car s))
  
(define (seg-end s)
  (cdr s))

(define (midpoint s)
  (let ({p (seg-start s)}
        {q (seg-end s)})
    (make-vector (average (xcor p) (xcor q))
                 (average (ycor p) (ycor q))
    )))
;(define (midpoint s) 
;  (define p (seg-start s))
;  (define q (seg-end s))
;  (make-vector () 
;               ()))

; define length too
(define (map p l)
  (if (null? l)
    nil
    (cons (p (car l))
          (map p (cdr l)))))