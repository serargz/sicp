(define l (list 1 3 (list 5 7) 9))
(car (cdr (car (cdr (cdr l)))))

(define l (list (list 7)))
(car (car l))

(define l (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr l))))))))))))
