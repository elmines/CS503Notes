(define a 42)

(define (f x)
  (
    (lambda (b)
      (define a (+ x 1))
      (define (g c) (* c c))
      (+ (* a a) (* (g a) a) (* (g b) b)) 
  )
  (* a a)
  )
)

(println (f 4))

(define (f x)
	(
		(lambda (b)
			(

				(lambda (a g)
					(+ (* a a) (* (g a) a) (* (g b) b)) 
				)
				(+ x 1) (lambda(c) (* c c))
			)

		)
		(* a a)
	)
)

(println (f 4))
