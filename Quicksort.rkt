#lang racket
(define (smaller pivot l)
  (cond
    ((null? l) (quote()))
    ((< (car l) pivot) (cons (car l)(smaller pivot (cdr l))))
    (else (smaller pivot (cdr l)))))


(define (greater pivot l)
  (cond
    ((null? l) (quote()))
    ((> (car l) pivot) (cons (car l)(greater pivot (cdr l))))
    (else (greater pivot (cdr l)))))

(define (quicksort l)
  (cond
    ((null? l)(quote()))
    (else(append
            (quicksort(smaller (car l)(cdr l)))
            (list (car l))
            (quicksort(greater (car l)(cdr l)))))))