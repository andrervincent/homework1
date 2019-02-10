(define (reverse-general L)
  (define reverseList ()) ;;initializes the reverseList - empty
  (cond
   ((null? 'L) ;; if L is an empty list - 
     #t        ;; function is done, return first list
      )
   (else '#f) ;; if L is not an empty list - 
   )
  )

(define (AddToNewList origList newList)
  (cons 
   (car originList)
   newlist)
  )