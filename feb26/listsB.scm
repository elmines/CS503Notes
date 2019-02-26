
; A recurive process, because the last thing we do is addition
(define (length items)
  (cond
    ((null? items) 0)
    (else (+ 1 (length (cdr items))))
  )
)

(define a (cons 4 (cons 42 (cons 86 (cons 5 nil)))))
(println (length a))

(define (length items)
  (define (iter store source)
    (cond
      ((null? source) 0)
      ( else (iter (+ 1 store) (cdr source) ) )
    )
  )
  (iter 0 items)
)

(println (length a))
