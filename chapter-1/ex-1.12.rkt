#lang sicp

;n=0 1
;n=1 1 1
;n=2 1 2 1
;n=3 1 3 3 1
;n=4 1 4 6 4 1
;n=5 1 5 10 10 5 1

(define (display-pascal-iter n count)
  (define (compute-col n k)
    (if (or (= k 0) (= k n))
        1
        (* (compute-col n (- k 1)) (/ (- (+ n 1) k) k))))

  (define (display-row n count)
    (if (> count n)
        (newline)
        (and (display (compute-col n count)) (display " ") (display-row n (+ count 1)))))

  (if (> count n)
      (newline)
      (and (display-row count 0) (display-pascal-iter n (+ count 1)))))

(define (display-pascal n)
  (display-pascal-iter n 0))

(display-pascal 9)