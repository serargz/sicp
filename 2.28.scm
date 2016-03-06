(define (fringe tree)
    (define (iter its ans)
        (cond ((null? its) ans)
              ((not (pair? its)) (cons its ans))
              (else
                  (iter (car its) (iter (cdr its) ans) ))))
    (iter tree (list)))
