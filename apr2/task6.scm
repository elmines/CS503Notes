(include "streamlib.scm")

(define (pairs s)
	(let ((following (stream-cdr s)))

		(cons-stream
			(list (stream-car s) (stream-car following))
			following
		)
	)
)

(define (nums n) (cons-stream n (nums (+ 1 n))) )

(sdisplay 10 (pairs 10))
