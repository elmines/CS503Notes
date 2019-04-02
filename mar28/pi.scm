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

(define (const-stream c) (cons-stream c (const-stream c)))
(define ones (cons-stream 1 ones))
(define twos (const-stream 2))

(define alt-ones (cons-stream 1 (cons-stream -1 alt-ones)))

(define odds (cons-stream 1 (add-streams twos odds)) )

(define (ps s)
	(cons-stream (stream-car s) (add-streams (stream-cdr s) (ps s)))
)

(define (// a b) (/ a (real b)))
(define pi-stream (combine-streams // alt-ones odds))

(define (tt xform s)
	(cons-stream s (tt xform (xform s)))
)
(define (stream-map f s)
	(cons-stream
		(f (stream-car s))
		(stream-map f (stream-cdr s))
	)
)

(define pi/4 (ps pi-stream))
(define acc-pi/4 (st pi/4))
(define super-acc-pi/4 (stream-map stream-car (tt st pi/4)) )

(println "pi/4 ~= " (/ 3.14159265358979323846264338327950288419716939937510582097494459230781640628620899862 4) )
(println (sref super-acc-pi/4 10))
(println (sref (ps pi-stream) 10))
(println (sref pi/4 10)  )
