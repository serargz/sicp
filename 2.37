(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      (list)
      (cons (accumulate op init (map (lambda (x) (car x)) seqs))
            (accumulate-n op init (map (lambda (x) (cdr x)) seqs)))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (x) (dot-product x v)) m))

(define (transpose mat)
  (accumulate-n (lambda (x rest) (cons x rest)) (list) mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (x) (matrix-*-vector cols x)) m)))

;     1 2 3
; m = 4 5 6
;     7 8 9
;
;     1
; v = 2
;     3
;
;      1 4 7
; m' = 2 5 8
;      3 6 9
