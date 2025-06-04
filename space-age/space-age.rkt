#lang racket


(define earth-year 31557600)

;; | Mercury | 0.2408467
;; | Venus   | 0.61519726
;; | Earth   | 1.0
;; | Mars    | 1.8808158
;; | Jupiter | 11.862615
;; | Saturn  | 29.447498
;; | Uranus  | 84.016846
;; | Neptune | 164.79132

(define on-earth
  (lambda (seconds) exact->inexact (/ seconds earth-year)))

(define on-mercury
  (lambda (seconds)
    (/ (on-earth seconds) 0.2408467)))
(define on-venus
  (lambda (seconds)
    (/ (on-earth seconds) 0.61519726)))
(define on-mars
  (lambda (seconds)
    (/ (on-earth seconds) 1.8808158)))
(define on-jupiter
  (lambda (seconds)
    (/ (on-earth seconds) 11.862615)))
(define on-saturn
  (lambda (seconds)
    (/ (on-earth seconds) 29.447498)))
(define on-uranus
  (lambda (seconds)
    (/ (on-earth seconds) 84.016846)))
(define on-neptune
  (lambda (seconds)
    (/ (on-earth seconds) 164.79132)))

(provide on-earth
         on-mercury
         on-venus
         on-mars
         on-jupiter
         on-saturn
         on-uranus
         on-neptune
         )
