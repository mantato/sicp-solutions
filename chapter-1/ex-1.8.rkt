#lang sicp

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x) x)))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.0000000000000001))

(define (improve guess x)
  (average (/ x (* guess guess)) (* 2 guess)))

(define (average x y)
  (/ (+ x y) 3))

(cbrt 12345)