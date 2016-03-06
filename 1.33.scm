(define (accumulate-filtered combiner null-value term a next b filter)
    (cond ((> a b) null-value)
          ((filter a) (combiner (term a) (accumulate-filtered combiner null-value term (next a) next b filter)))
          (else (accumulate-filtered combiner null-value term (next a) next b filter))))

(define (sum-even f a next b)
    (accumulate-filtered + 0 f a next b even?))
