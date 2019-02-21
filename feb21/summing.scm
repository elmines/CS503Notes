(define (sum first last f step)

	(cond 
		( (> first last) 0 )
		( else (+ (f first) ( sum (+ first step) last f step)  ) )
	)
)
(println (sum 1 100 (lambda(x) x) 1) )

(define (sum first last f step)

	(cond 
		( (> first last) 0 )
		( else (+ (f first) ( sum (step first) last f step)  ) )
	)
)
(println (sum 1 100 (lambda(a) a) (lambda(x) (+ x 1)) ) )


(define (series base first last f op step)
	(define (helper i)
		(cond
			( (> i last) base )
			( else (op (f first) (helper (step i)) ) ) ;The last thing you do is op, so this isn't tail-recursive
		)
	)

	(helper first)
)
(println
	(series 1 1 5 (lambda(a) (* a a)) * (lambda(i) (+ i 1)) )
)


(define (series base first last op f step)

	(define (iter store source)
		(cond 
			( (> source last) store )
			( else ( iter (op (f source) store) (step source) ) )
		)
	)

	(iter base first)
)
