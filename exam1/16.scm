(define (f x)
	(
		(lambda (a) 
			(define b (* a a))
			(define (g c) (* c c))
			(+ (* a a) (* (g a) a) (* (g b) b)) 
		)

		(+ x 1)
	)
)
(println (f 4))

(define (f x)
	(
		(lambda (x) 
			(define a (+ x 1))
			(define b (* a a))
			(define (g c) (* c c))
			(+ (* a a) (* (g a) a) (* (g b) b)) 
		)
		x
	)
)
(println (f 4))

(define (f x)
	(
		(lambda (a)

			(
				(lambda (b g)
					(+ (* a a) (* (g a) a) (* (g b) b)) 
				)
				(* a a) (lambda(c) (* c c))
			)
		)
		(+ x 1)
	)
)
(println (f 4))
