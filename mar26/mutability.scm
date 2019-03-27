(define (cons a b)
	(define (set-a! x) (set! a x))
	(define (set-b! x) (set! b x))
	(define (get-a) a)
	(define (get-b) b)

	(define (dispatch m)
		(cond
			((eq? m 'set-a!) set-a!)
			((eq? m 'set-b!) set-b!)
			((eq? m 'get-a!) get-a!)
			((eq? m 'get-b!) get-b!)
			(else nil)
		)
	)
	dispatch
)

(define (set-car! z w)
	( (z 'set-a!) w)
)

(define (set-cdr! z w)
	( (z 'set-b!) w)
)
