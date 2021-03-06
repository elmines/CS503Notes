; cons-stream uses normal-order evaluation
(define (nums a)
	(cons-stream a (nums (+ a 1)))
)
(define (sdisplay z n)
	(cond
		((= n 0) (println "..."))
		(else
			(print (stream-car z) " ")
			(sdisplay (stream-cdr z) (- n 1))
		)
	)
)

; (nums 0) is the whole numbers 
(nums 0)

; What if we want to compute the cumulative (partial) sums of these numbers

(define (add-streams s t)
	(cons-stream
		(+ (stream-car s) (stream-car t))
		(add-streams (stream-cdr s) (stream-cdr t))
	)

)

(define (ps s)
	(cons-stream
		(stream-car s)
		(add-streams (stream-cdr s) (ps s))
	)
)

(sdisplay (ps (nums 0)) 15)

(define ones (cons-stream 1 ones))
(sdisplay ones 10)

(define wholes (cons-stream 0 (add-streams ones wholes)))
(sdisplay wholes 10)

; We had to do two conses because there are two base cases
(define fibs (cons-stream 0 (cons-stream 1 (add-streams fibs (stream-cdr fibs)))))
(sdisplay fibs 10)
