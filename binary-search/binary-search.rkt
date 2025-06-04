#lang racket

(provide binary-search)


(define (binary-search array value)
  (define (search-helper left right)
    (cond
      [(> left right) #f]
      [else
       (let ([mid (quotient (+ left right) 2)])
         (cond
           [(= (vector-ref array mid) value) mid]
           [(< (vector-ref array mid) value) (search-helper (+ mid 1) right)]
           [else (search-helper left (- mid 1))]
           )
         )
       ]))

  (if (= (vector-length array) 0)
      #f
      (search-helper 0 (- (vector-length array) 1))))
