(define (cube x) (* x x x))
(define (inc x) (+ 1 x))

(define (sum f a next b)
    (if (> a b)
        0
        (+ (f a) (sum f (next a) next b))))

(define (sum-cubes a b)
    (sum cube a inc b))

(define (integral f a b dx)
    (define (inc-dx x) (+ x dx))
    (* (sum f (+ a (/ dx 2.0)) inc-dx b) dx))

(define (remainder a b)
    (- (/ a b) (floor (/ a b))))

(define (even? x)
    (= (remainder x 2) 0))

(define (mul x)
    (cond ((= x 0) 1)
          ((even? x) 2)
          (else 4)))

(define (sum2 term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a)))))
    (iter a 0))

(define (simpson f a b n)
    (define (h) (/ (- b a) n))
    (define (y k) (* (mul k) (f (+ a (* k (h))))))
    (*
        (/ (h) 3)
        (sum2 y 0 inc n)))


