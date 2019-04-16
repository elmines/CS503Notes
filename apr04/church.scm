(define (inc n) ; n is an exisiting church numeral
	(lambda(f)
		(lambda(x)

			(f ( (n f) x) )
		)
	)
)
