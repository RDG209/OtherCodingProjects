  (define (factorial n)
    (define (factorial-helper n acc)
      (if (<= n 1)
          acc
          (factorial-helper (- n 1) (* n acc))))
    (factorial-helper n 1)) ; Start the accumulator at 1

  (define (processData data)
    (cond
      ((number? data) 
       (display "It's a number: ") 
       (display data))
      ((symbol? data) 
       (display "It's a symbol: ") 
       (display data) (newline))
      (else 
       (display "Unknown type"))))

  (define (main)
    (display "Factorial of 5: ")
    (display (factorial 5))
    (newline)
    (processData 10)
    (newline)
    (processData 'hello))
  (main) 