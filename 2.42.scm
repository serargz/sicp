(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append (list) (map proc seq)))

(define (enumerate-interval a b)
    (if (> a b)
        (list)
        (cons a (enumerate-interval (+ 1 a) b))))

(define (empty-board) (list))

(define (adjoin-position new-row k rest-of-queens)
    (cons new-row rest-of-queens))

; for each other queen, we check that it's not in the same row and
; it's not in the diagonal (row +- dist)

(define (safe? k positions)
    (define (safe-iter? v rest dist)
        (if (null? rest)
            #t
            (if (or (= v (car rest)) (= v (+ dist (car rest))) (= v (- (car rest) dist)))
                #f
                (safe-iter? v (cdr rest) (+ dist 1)))))
    (safe-iter? (car positions) (cdr positions) 1))

(define (queens board-size)
    (define (queen-cols k)
        (if (= k 0)
            (list empty-board)
            (filter
                (lambda (positions) (safe? k positions))
                (flatmap
                    (lambda (rest-of-queens)
                        (map (lambda (new-row)
                            (adjoin-position new-row k rest-of-queens))
                            (enumerate-interval 1 board-size)))
                    (queen-cols (- k 1))))))
    (queen-cols board-size))
