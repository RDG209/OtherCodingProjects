#lang racket

(define (factorial n)
  (if (<= n 1)
      1
      (* n (factorial(- n 1)))))

(define (display-type x)
  (cond
    ((number? x) (display "Number"))
    ((symbol? x) (display "Symbol"))))

(display "Factorial of 5: ")
(display (factorial 5))
(newline)
(display-type 'example-symbol)
(newline)
(display-type 5)
