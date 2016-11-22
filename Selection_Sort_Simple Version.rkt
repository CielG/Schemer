#lang racket
(define (selection_sort l)
   (cond
     ((null? l) (quote()))
     (else (cons (min (car l) l)
                 (selection_sort (remove (min (car l) l) l))))))

(define (min a l)
   (cond  
    ((null? l) a)
    ((< (car l) a)(min (car l)(cdr l)))
    (else (min a (cdr l)))))

