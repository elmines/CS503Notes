(define i 0)

; Tail-recursive with no parameters, so we'll never have stack overflow
; Dr. Lusth's implementation will garbage collect anything from the higher up function calls
(define (main)
	 (println i)
	 (++ i)
	(main)
)
; Scheme does "tail-recursion optimization"
; It rewrites the existing stack frame rather than creates a new one?


; This is not tail-recursive, because the last operation is a multiplication
(define (fact n)
	(if (< n 2)
		1
		(* n (fact (- n 1)))
	)
)



; iter is in fact
(define (fact2 n)
	(define (iter store source)
		(println "(iter " store " " source ")")
		(pause)
		(if (= source 0)
			store
			(iter (* store source) (- source 1) )
		)
	)
	(iter 1 n)
)


(define (fib n)
	(if (< n 2)
		n
		(+ (fib (- n 1)) (fib (- n 2)))
	)
)

; The number of stores you have for an iterator are equal to the number of your base cases
(define (fib2 n)
	(define (iter prevprev prev n)
		(if (= n 0)
			prevprev
			(iter prev (+ prevprev prev) (- n 1))
		)
	)

	(iter 0 1 n)
)	

(println (fib2 45))

; Scam has block-comments!
;{

;}

; Scam also lets you have a "comment until end of file"!
;$

