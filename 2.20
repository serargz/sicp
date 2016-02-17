(define (even? n)
    (= (/ n 2.0) (floor (/ n 2.0))))

(define (odd? n)
    (not (even? n)))

(define (same-parity n . l)
    (define (sp-it ret old)
         (if (null? old)
             ret
             (if (or
                     (and (even? n) (even? (car old)))
                     (and (odd? n) (odd? (car old))))
                (sp-it (cons (car old) ret) (cdr old))
                (sp-it ret (cdr old)))))
    (sp-it (list n) l))

