(define (reverse l)
    (define (reverse-it rev old)
        (if (null? old)
            rev
            (reverse-it (cons (car old) rev) (cdr old))))
    (reverse-it (list) l))

