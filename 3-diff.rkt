#lang racket

(define atom?
  (lambda (x) (and (not (null? x)) (not (pair? x)))))

(define numerical-diff
  (lambda (f h)
    (lambda (x)
      (/ (- (f (+ x h)) (f x)) h))))

(define two-times-x (numerical-diff (lambda (x) (* x x)) 0.00005))

(define diff
  (lambda (exp)
    (simplify (if (atom? exp)
                  (diff-atom exp)
                  (diff-composite exp)))))

(define simplify
  (lambda (exp) exp))

(define diff-atom
  (lambda (exp)
    (if (equal? exp 'x)
        1
        0)))

(define diff-composite
  (lambda (exp)
    (let ((rator (car exp))
          (rands (cdr exp)))
      (cond
        ((equal? rator '+) (diff-sum rands))
        ((equal? rator '*) (diff-product rands))))))

(define diff-sum
  (lambda (exp)
    (cons '+ (map diff exp))))

(define diff-product
  (lambda (exp) 'unimplemented))

(diff '(+ x x))