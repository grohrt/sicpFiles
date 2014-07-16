(define (Average-Damp f)
    (lambda (x) (average x (f x))))