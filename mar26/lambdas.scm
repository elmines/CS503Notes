
(define (cons a b)
	(lambda (m) (if (= m 0) a b))
)
(define (car z) (z 0))
(define (cdr z) (z 1))
