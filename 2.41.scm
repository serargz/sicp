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

(define (unique-pairs n)
    (flatmap
        (lambda (i)
            (map (lambda (j) (list i j))
                (enumerate-interval 1 (- i 1))))
        (enumerate-interval 1 n)))

(define (unique-triples n)
    (flatmap
        (lambda (i)
            (flatmap (lambda (j)
                     (map (lambda (k) (list i j k))
                          (enumerate-interval 1 (- j 1))))
                (enumerate-interval 1 (- i 1))))
        (enumerate-interval 1 n)))
