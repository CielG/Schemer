#lang racket

(define (selection_sort l)
   (cond
     ((null? l) (quote()))
     ;(else(cons min (selection_sort (remove min l)))))))
     (else (cons (min l (car l))
                 (selection_sort (remove (min l (car l)) l))))))
;(define (remove l a)
  ; (cond
      ;((null? l) (quote()))
      ;((eq? (car l) a )(cdr l))
      ;(else (cons (car l)(remove (cdr l) a)))))
                  
(define (min l a)
   (cond  
    ((null? l) a)
    ((< (car l) a)(min (cdr l)(car l)))
    (else (min (cdr l) a ))))

 ;(local [(define smallest
           ; (cond
            ;[(empty? lon) empty]
            ;[else (find-smallest lon (first lon))]))]