#lang racket

(define list-length
  (lambda (lst)
    (if (null? lst) 0
        (+ 1 (list-length (cdr lst))))))

(list-length '(1 2 3 4 5))

(define range
  (lambda (start length) null))

(range 5 4) ;; should return (5 6 7 8)

(define how-many
  (lambda (predicate lst)
    (if (null? lst)
        0
        (+ (if (predicate (car lst)) 1 0) (how-many predicate (cdr lst))))))

(how-many odd? '(1 2 3 4 5 6))

(define filter
  (lambda (predicate lst)
    (if (null? lst)
        null
        (let ((tail (filter predicate (cdr lst))))
          (if (predicate (car lst))
              (cons (car lst) tail)
              tail)))))

(filter odd? '(1 2 3 4 5 6 7 8))

(define fill-this-in null)

;; (map-list f '(a b c d)) => ((f a) (f b) (f c))
(define map-list
  (lambda (f lst) fill-this-in))

(map-list (lambda (x) (+ 1 x)) '(1 2 3 4 5 6)) ;; => (2 3 4 5 6 7)

;; (fold-list f a '(b c d)) => (f (f (f a b) c) d)
;; (fold-list f a null) => ?
(define fold-list
  (lambda (f begin lst) fill-this-in))

(fold-list (lambda (x y) (+ x y)) 0 '(1 2 3 4 5 6)) ;; => 21

;; Homework puzzle -- you will probably need to define an additional function.
(define map-list-2
  (lambda (f lst) (fold-list (lambda (x y) fill-this-in) lst)))

(map-list-2 (lambda (x) (+ 1 x)) '(1 2 3 4 5 6))
