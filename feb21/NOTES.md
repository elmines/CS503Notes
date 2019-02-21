# Notes, February 21
The very simplest language you need is the lambda calculus:

```
expr : ID
     | LAMBDA ID expr
     | OPAREN expr expr CPAREN
```

- Any language with that grammar is Turing-complete.
- That is, it can compute anything that is computable.
- The first rule is a variable
- The second rule is a function definitions with one parameter and one statement
- The third rule is a function call
  - The first expression is the function, and the second is the argument?
- Where are operators?
  - You define them yourselves
- Where are the literals?
  - Integers, Strings, booleans?

- The following returns 1?
- We basically "split" the function into two functions so we can have more than one argument
```
(lambda (f)
	(lambda (x)
		(f x)
	)
)

```
(f (f x)) ; Yields two?
