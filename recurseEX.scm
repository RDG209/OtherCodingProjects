#lang racket

(define (check-num n)
  (if (> n 5)
      (begin
        (cond
          ((= (modulo n 2) 0) (display n) (display " is divisible by 2\n"))
          ((= (modulo n 3) 0) (display n) (display " is divisible by 3\n"))
          (else (display n) (display " is divisible by neither 2 nor 3\n")))
         (check-num (+ n 1)))
       (display "Done\n")))
       
  
 (check-num 1)

  ; Handle both integers and floats
(define (print-num n)
  (cond
    ((integer? n) (display "Integer: ") (display n) (newline))
    ((real? n) (display "Float: ") (display n) (newline))))

(print-num 42)
(print-num 3.14)

; type conversion auto
(define int-to-float (lambda (x) (* x 1.0)))
(display (int-to-float 5)) ; outputs 5.0
(newline)
