(define (udn x)

	(define (up y)
		(set! x (+ x y))
	)
	(define (down y)
		(set! x (- x y))
	)
	(define (get) x)
	(define (dispatch op)
		(cond
			((eq? op 'up) up)
			((eq? op 'down) down)
			((eq? op 'get) get)
			(else (throw 'BAD_OP (string+ "op " op " not understood")))
		)
	)
	dispatch
)
; That, my friends, is a Scheme object

(define z (udn 10))
(define u (z 'up))
(u 5)
(define w (udn 13))

;(inspect z)
;(inspect (z 'get))
;(inspect ( (z 'get) ) )
;(inspect ( (z 'up) 5 ) ) 
;(inspect ((z 'get)))
