(define (adjust x)
	(lambda(y) (+ x y))
)

(define z (adjust 5))
(inspect (z 13))
