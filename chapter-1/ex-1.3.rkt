#lang sicp

(define (sum-of-squares-of-two-biggest x y z)
  (square-sum (biggest x y) (biggest (smallest x y) z)))

(define (square x)
  (* x x))

(define (square-sum x y)
  (+ (square x) (square y)))

(define (biggest x y)
  (if (> x y) x y))

(define (smallest x y)
  (if (< x y) x y))