(define (sdisplay z n)
	(cond
		((= n 0) (println "..."))
		(else
			(print (stream-car z) " ")
			(sdisplay (stream-cdr z) (- n 1))
		)
	)
)
(define (sref z n)
	(cond
		((= n 0) (stream-car z))
		(else (sref (stream-cdr z) (- n 1)) )
	)
)
(define (st s)
	(define s0 (stream-car s))
	(define s1 (sref s 1))
	(define s2 (sref s 2))

	(cons-stream 
		(/ (- (* s2 s0) (* s1 s1)) (+ s2 (- (* 2 s1)) s0) )
		(st (stream-cdr s))
	)

)


(define (combine-streams op s t)
	(cons-stream
		(op (stream-car s) (stream-car t))
		(combine-streams op (stream-cdr s) (stream-cdr t))
	)
)
(define (add-streams s t) (combine-streams + s t))
(define (ps s)
	(cons-stream (stream-car s) (add-streams (stream-cdr s) (ps s)))
)
(define (stream-map f s)
	(cons-stream
		(f (stream-car s))
		(stream-map f (stream-cdr s))
	)
)

(define (const-stream c) (cons-stream c (const-stream c)))
(define ones (const-stream 1))
(define twos (const-stream 2))
(define alt-ones (cons-stream 1 (cons-stream -1 alt-ones)))
(define odds (cons-stream 1 (add-streams twos odds)) )

(define wholes (cons-stream 0 (add-streams ones wholes)))

(define (shuffle s t)
	(cons-stream
		(stream-car s)
		(shuffle t (stream-cdr s))
	)
)
(define (shuffle2 s t)
	(define a (stream-car s)) ; a is a list
	(define b (stream-car t)) ; b is a list
	(cond
		((< (cadr a) (cadr b)) 
			(cons-stream a (shuffle2 (stream-cdr s) t)
		)

		((< (cadr b) (cadr a))
			(cons-stream b (shuffle2 s (stream-cdr t)))
		)
		((< (car a) (car b))
			(cons-stream a (shuffle2 (stream-cdr s) t))
		)
		(else ; (car a) and (car b) won't be equal
			(cons-stream b (shuffle2 s (stream-cdr t)))
		)
	)
)


(define merge shuffle)

(define (pairs s t)
	(cons-stream
		(list (stream-car s) (stream-car t))
		(merge
			(stream-map (lambda(x) (list (stream-car s) x)) (stream-cdr t))
			(pairs (stream-cdr s) (stream-cdr t))
		)
	)
)

(sdisplay (pairs wholes wholes) 8)
