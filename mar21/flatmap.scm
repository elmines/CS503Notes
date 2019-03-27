
(accumulate append nil
	(map
		(lambda(x) (list x (* x x)))
		items
	)
)

; append takes a long time, if the initial list is long
; Here, the trailing list is growing bigger and bigger, meaning this accum is good if you want to use append for your op
(define (accum op items base)
	(cond
		((null? items) base)
		(else (op (car items) (accum op (cdr items) base)) 
