(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                  (+ this-coeff (* higher-terms x)))
              0
              coefficient-sequence))

;
; 1 + 2x + 3x^2 + 4x^3
; (((4x + 3)x + 2)x + 1)
;
; (h-e 2 (list 1 2 3 4))
;   (accumulate f 0 (list 1 2 3 4))
;       (accumulate f 0 (list 2 3 4))
;           (accumulate f 0 (list 3 4))
;               (accumulate f 0 (list 4))
;                   (accumulate f 0 (list))
;                   => 0
;               => 4
;           => (4x + 3)
;       => ((4x + 3)x + 2)
;   => (((4x + 3)x + 2)x + 1)
; => (((4*2 + 3)*2 + 2)*2 + 1)
; => 49

