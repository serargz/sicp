(define (cube x) (* x x x))
(define (square x) (* x x))
(define (inc x) (+ 1 x))

(define (product f a next b)
    (if (> a b)
        1
        (* (f a) (product f (next a) next b))))

(define (product2 f a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (f a) result))))
    (iter a 1)
)

(define (factorial x)
    (product identity 1 inc x))
