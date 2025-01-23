#lang sicp

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
  (define (f-loop n-1 n-2 n-3 counter)
    (if (= n counter)
        n-1
        (f-loop (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (+ counter 1))))

  (if (< n 3)
      n
      (f-loop 2 1 0 2)))