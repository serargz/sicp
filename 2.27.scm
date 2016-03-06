(define (deep-reverse items)
    (define (iter-rev ans old)
        (cond ((null? old) ans)
              ((not (pair? old)) old)
              (else
                  (iter-rev
                      (cons (iter-rev (list) (car old)) ans)
                      (cdr old)))))
    (iter-rev (list) items))
