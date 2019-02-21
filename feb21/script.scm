
(println

(

( (lambda (f)
	(lambda (x)
		(f x)
	)) (lambda (z) (+ z 1))
) 0 )

)

(define inc (lambda (z) (+ z 1)))
(println (inc 5))

; Approximates the square of a number
; Note that the lambda calculus wouldn't allow us to have multiple statements like this
(define (f x)
	(define a (+ x 1))
	(define b (- x 1))
	(* a b)
)

(define (f x)
	(
		(lambda (a b)
			( * (+ a a) (+ b b) )
		)

		(+ x 1)
		(- x 1)
	)
)
(println (f 4))

(define (f x)
	(define a (+ x 1))
 	; In Scam, not Scheme, this "a" we define refers to the a we just defined
	; Scheme defines a process in parallel
	(define b (* a a))
	( * (+ a a) (+ b b) )
)

(define (f x)

	(

		(

			(lambda (a)
	
				(lambda (b)
					(* (+ a a) (+ b b))
				)
				(+ x 1)
			)
			(* a a)
		)

	)
)

(println (f 3))
