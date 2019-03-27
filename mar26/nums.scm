(define (nums a)
	(cons a (nums (+ a 1)))
)
; (inspect (nums 5)) Recurs infinitely

(define (nums a)
	(cons
		a
		(lambda() (nums (+ a 1)))
	)
)
(inspect (nums 5))

(define scar car)
(define (scdr z) ( (cdr z) ) )
(define (sdisplay z n)
	(cond
		((= n 0) (println "..."))
		(else
			(print (scar z) " ")
			(sdisplay (scdr z) (- n 1))
		)
	)
)

(sdisplay (nums 10) 5)
