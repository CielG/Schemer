#lang racket
(define (insert a l)
  (cond
    ((null? l) (cons a l))
    (( > a (car l) )(cons (car l) (insert a (cdr l))))
    (else (cons a l))))
(define (insertion-sort l)
  (cond
    ((null? l) (quote()))
    (else (insert (car l) (insertion-sort (cdr l))))))