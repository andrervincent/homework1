;; Reverse List problem
(define (reverse-general L)
  (cond ((null? L) '()) ;; if the param is null return the param
        ((list? L)      ;; if the param is a list, 
         (append (reverse-general (cdr L)) ;; add the first element to 
                 (list (reverse-general (car L))) ;; the end of the list
                 )
         )
        (else L)
        )
  )

(display (deep-reverse '(1 2 (7 8))))

;; Sum of list problem - no nested lists
(define (sum-numbers L)
  (if (null? L) 0
    (if (not (number? (car L))) (+ 0 (sum-numbers (cdr L))) ;; for non-integer elements
      (+ (car L) (sum-numbers (cdr L)))
      )
    )
  
)

(display (sum-numbers '(2 1 B 5 3)))
;; Sum of list problem - nested lists
(define (sum-up-numbers-general L)
 (if
  (null? L) 0
  (if (list? (car L))
    (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L)))
    (+ (car L) (sum-up-numbers-general (cdr L))) 
 )
)
)

(sum-up-numbers-general '(1 (2 2) 3))