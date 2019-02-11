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

;; Sum of list problem
(define (sum-up-numbers L)
  (if (null? L) 0		;; null lists return 0
      (+ (car L) (sum-up-numbers (cdr L))))) ;; 
(sum-up-numbers '(1 2 3))