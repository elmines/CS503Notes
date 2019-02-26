; We assume items is either a cons cell or nil
(define (list? items)
  (cond
    ((null? items) #t)
    ((not (pair? items)) #f)
    ( else (list? (cdr items)) )
  )
)
; A list of values
(define l (cons 3 (cons 5 (cons 1 nil))))
(define badL (cons 3 (cons 5 (cons 1 0))))

(println "(cons 2 3) = " (cons 2 3)) ; Prints (2 . 3)
(println "l = " l)                   ; Prints (3 5 1)
(println "badL = " badL)             ; Prints (3 5 1 . 0)

(println "(list? l) -> " (list? l))
(println "(list? badL) -> " (list? badL))

; Qualifies as a list of lists?
(define ll
  (cons 
    (cons
      2
      (cons 
        3
        nil
      )
    )
    1
  )
)
(println "ll = " ll)
