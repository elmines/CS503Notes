(define old+ +)
(define old-type type)

(define (optype a)
	( if (eq? (type a) 'CONS) (car a) (type a) )
)

(define (sx+ a b)
	(string+ a (string b))
)
(define (is+ a b)
	(+ a  (integer b))
)
(define (rs+ a b)
	(+ a (real b))
)

(define (newRational n d) 
	(list 'RATIONAL n d)
)
(define (num r) (cadr r))
(define (denom r) (caddr r))
(define (rat+ a b)
	(newRational	
		(+ (* (num a) (denom b)) (* (num b) (denom a)) )
		(* (denom a) (denom b))
	)
)

(define (coerceInteger x) (newRational x 1))
(define (coerceRational x) (/ (num x) (real (denom x)) )
(define (coerceReal x) (string x))

(define opTable
	(list
		(list 'INTEGER coerceInteger)
		(list 'RATIONAL coerceRational)
		(list '(REAL REAL) old+)
		(list '(STRING STRING) string+)
		(list '(INTEGER STRING) is+)
		(list '(STRING INTEGER) sx+)
		(list '(REAL STRING) rs+)
		(list '(STRING REAL) sx+)
		(list '(RATIONAL RATIONAL) rat+)
	)
)


(define (get typeA typeB)
	(cadr (assoc (list typeA typeB) opTable)) 
)


(define (tower x)
	(define types '(REAL RATIONAL INTEGER))
	(length (member x types))
)


(define (get-coercion t)
	(cadr (assoc t optTable))
)

(define (+ x y)

	(define t1 (optype x))
	(define t2 (optype x))
	(cond
		( (or (eq? t1 'STRING) (eq? t2 'STRING) (eq? t1 t2) )

			( (get (optype x) (optype y)) x y )

		)

		( (< (tower t1) (tower t2))
			(+ ((get-coercion t1) x) y)
		)

		(else
			(+ x ((get-coercion t2) y) )
		)

	)
)

	( (get (optype x) (optype y)) x y )
)

; assoc searches a list?
; (inspect (assoc '(INTEGER REAL) opTable)) 
; (inspect (get 'INTEGER 'STRING))
; (inspect (type 3))
; (inspect (type 42.0))

;(inspect (+ 3 4))
;(inspect (+ 3 "4"))
;(inspect (optype (newRational 2 3)))
;(inspect (+ (newRational 3 4) (newRational 3 4)))

(inspect (+ 3 4.4))
