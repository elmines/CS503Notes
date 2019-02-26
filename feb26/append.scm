
; This function already exists
; This is a recursive process
(define (append x y)
  (cond
    ((null? x) y)
    (else (cons (car x) (append (cdr x) y)))
  ) 
)

(define a (cons 3 (cons 5 (cons 7 (cons 11 (cons 13 nil))))))
(define b (cons 2 (cons 4 (cons 8 nil))))

; Note that changes to ab won't affect x, but they could affect y
(define ab (append ab))
(println ab)
