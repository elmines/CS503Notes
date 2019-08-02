(define m (list "Ethan" "Evan" "Barry"))
(inspect (accumulate (lambda (x y) (+ 1 y)) 0 m))
