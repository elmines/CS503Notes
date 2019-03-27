# March 26
- We don't read the section on propagation of constraints

## Concurrency
- You should read the section on this

```
(define x 4)

; Thread A
(set! x (+ x 1))

; Thread B
(set! x (* x 2))
```
- x could end up being 10, 9, 5, or 8
- Let's say we have a barrier set up for both those threads 


```
(define x 4)

; Thread A
(set! x (+ x 1))

; Thread B
(set! x (+ x x))
```
- We will have to do something to this effect on the test

- "If you're not the best worker, just make sure there's someone less than you."
