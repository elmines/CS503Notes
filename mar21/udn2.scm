(define (udn x)

	(define (up y)
		(set! x (+ x y))
	)
	(define (down y)
		(set! x (- x y))
	)
	(define (get) x)
	(return this)
)
; That, my friends, is a Scam object

(define z (udn 10))
(inspect z)
(inspect (z 'get))
(inspect ( (z 'get) ) )

(inspect ( (z 'up) 5 ) ) 
(inspect ((z 'get)))
