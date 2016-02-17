(define (square-list-1 items)
  (if (null? items)
      (list)
      (cons (* (car items) (car items)) (square-list-1 (cdr items)))))

(define (square-list items)
  (map (lambda (x) (* x x)) items))
