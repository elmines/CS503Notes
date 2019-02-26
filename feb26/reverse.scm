; reverse already exists?
(define (reverse items)
  (cond
    ((null? items) nil)
    ( else (cons (reverse (cdr items)) (car items) ) )
  )
)

(define a (cons 3 (cons 5 (cons 7 (cons 11 nil)))))
(define ra (reverse a))
(println ra) ; Going to look pretty ugly

; This takes quadratic time, because we make n calls, each of which use append, which takes linear time
(define (reverse items)
  (cond
    ((null? items) nil)
    ( else (append (reverse (cdr items)) (list (car items)) ) )
  )
)

(define ra (reverse a))
(println ra)

(define (reverse items)
  (define (iter store source)
    (cond
      ((null? source) store)
      ( else (iter (cons (car source) store) (cdr source) ) )
    )
  )
  (iter nil items)
)

(define ra (reverse a))
(println ra)
