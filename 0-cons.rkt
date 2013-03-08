#lang racket

(cons 5 6) ;; => (5 . 6)

(car (cons 5 6)) ;; => 5
(cdr (cons 5 6)) ;; => 6

(cons (cons 5 6) (cons 6 7))
(cons 5 (cons 6 (cons 7 null)))

(list 5 6 7)

(car (list 5 6 7))
(cdr (list 5 6 7))
(car (cons 5 (cons 6 (cons 7 null))))
(cdr (cons 5 (cons 6 (cons 7 null))))