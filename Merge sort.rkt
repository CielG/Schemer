#lang racket
(define (left-part l end)
  (cond
    ((zero? end) empty)
    (else (cons (car l) (left-part (cdr l) (sub1 end))))))

(define (right-part l end)
  (cond
    ((zero? end) l)
    (else(right-part(cdr l) (sub1 end)))))

(define (merge l1 l2)
  (cond
    ((null? l1) l2)
    ((null? l2) l1)
    ((< (car l1) (car l2))(cons (car l1)(merge (cdr l1) l2)))
    (else (cons (car l2)(merge (cdr l2) l1)))))

(define (merge-sort l)
  (local ((define long (length l))
          (define mid (quotient long 2))
          (define left (left-part l mid))
          (define right (right-part l mid)))
    (cond
      ((<= long 1) l)
      (else (merge (merge-sort left)(merge-sort right))))))
 
    