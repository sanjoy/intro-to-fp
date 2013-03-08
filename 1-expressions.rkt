#lang racket

(+ 1 2 3)
(- 3 1)
(equal? 5 6)
(equal? 7 7)
(< 7 13)

(if #t 5 6)
(if #f 5 6)
(if (equal? 50 60) "this seems inconsistent" "all is well")

(let ((x 5)
      (y 10))
  (+ x y))

(define ten 10)

ten

(lambda (x) (* x x))
((lambda (x) (* x x)) 10)

(define square (lambda (x) (* x x)))

(define increment-by
  (lambda (n)
    (lambda (x) (+ x n))))

(define increment-by-5 (increment-by 5))
(increment-by-5 40)

(define peano-recursive-add
  (lambda (x y)
    (if (equal? x 0) y
        (+ 1 (peano-recursive-add (- x 1) y)))))

(peano-recursive-add 10 20)

(+ 42 42)
(quote (+ 42 42))
'(+ 42 42)