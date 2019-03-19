(define (f x y z)
	(cond
		((< z 2) 1)
		((= z 2) (* x y z))
		((= (% z 2) 0) (+ (f x y (- z 3)) (f x y (- z 2))))
		(else (* y (f (- x 1) y (- z 1))))
	)
)

(println (f 20 3 20))
