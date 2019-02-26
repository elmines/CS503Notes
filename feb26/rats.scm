(define (printfrac frac)
  (println (car x) "/" (cdr x)  )
)
; cons creates a simple data structure with two values
(define x (cons 2 3))
(print "x = ")
(printfrac (cons 2 3) )

(println "x is a cons cell? " (pair? x))
(println "x is null?        " (null? x))
(println "nil is null?      " (null? nil))
