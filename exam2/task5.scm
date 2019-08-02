(define (equals a b)


)

(define (create n)
	(lambda(f)
		(lambda(x)

			(define (iter i store)
				(cond
					((= i n) store)
					(else (iter (+ i 1) (f store)) )
				)
			)

			(iter 0 x)
		)
	)
)
(define (pred n)
	(lambda(f)
		(lambda(x)
			(let ( (next ((n f) x)) )
				(define (iter store)
					(cond
						((equal? next (f store)) store)
						(else               (iter (f store)) )
					)
				)
				(iter x)
			)
		)
	)
)

(define mystery
	(lambda (p)
		(lambda (q)
			(lambda (r)
				(
					((lambda (f) (lambda (x) (f x))) q)
					((p q) r)
				)
			)
		)
	)
)

(define inc (lambda(x) (+ x 1)))

(define a (create 5))
(define b (create 2))
(inspect (mystery a))
(inspect ( (mystery a) b) )
(inspect ( ( (mystery a) b) inc) )
(inspect ( ( ( (mystery a) b) inc) 2) )
