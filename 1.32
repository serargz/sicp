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

(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (accumulate2 combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (combiner result (term a)))))
    (iter a null-value)
)

(define (sum3 f a next b)
    (accumulate2 + 0 f a next b))

(define (product3 f a next b)
    (accumulate2 * 1 f a next b))
