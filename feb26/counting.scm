(define (countCells t)
  (cond
    ((null? t) 0)
    ( else (+ 1 (countCells (car t)) (countCells (cdr t)) ) )
  )
)

(define tree
  (cons
    (cons nil nil)
    (cons
      (cons
        nil
        (cons nil nil)
      )
      (cons
        (cons nil nil)
        nil
      )
    )
  )
)

(println (countCells tree))
