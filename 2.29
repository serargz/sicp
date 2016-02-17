(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
    (car mobile))

(define (right-branch mobile)
    (car (cdr mobile)))

(define (branch-length branch)
    (car branch))

(define (branch-structure branch)
    (car (cdr branch)))

(define (total-weight mobile)
    (define (iter br res)
        (cond ((null? br) res)
              ((not (pair? br)) (+ br res))
              (else (iter (left-branch br) (iter (right-branch br) res)))))
    (iter mobile 0))

(define (balanced? mobile)
    (define (torque branch)
        (* (branch-length branch) (total-weight branch)))
    (and (balanced? left-branch) (balanced? right-branch) (= (torque (left-branch mobile)) (torque (right-branch mobile)))))
