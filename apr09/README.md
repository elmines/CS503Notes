
## Assignment 3
- Need we worry about arithmetic overflow for those large factorials?
  - Need we print a certain number of decimal digits?
  - Default implementation
- Can we use NAND gates "indirectly?"
  - Yes.
- Using "include" statements to make common modules for our Tasks?
  - Yes.
- How do we compute the derivatives?
  - We "undo the trapezoid rule"
  - The constant must be f(0) for things to work

## First Exam Question 8
- The answer is `(accumulate append nil m)`
- The function h1 makes no sense, because we can't call append on x if it isn't a pair
- The function h2 is bad for similar reasons


## General Facts
- Our tests will have Scheme-style objects, not Scam style ones
- Pattern matching languages
- "I like the idea of programming with constraints"
- Universal Sets
  - NAND
  - NOR
  - AND, NOT
  - OR, NOT
- The DPL won't be on the next exam

## Relevant Differences between Scam and Scheme
- You can override anything in Scam
- Only Scam lets you make arbitrary functions with normal-order evaluation?
  - Put `$` in front of a variable to delay its evaluation
  - We also place a variable `#`, anywhere in the parameter list, which references the calling scope

```
(define (inspect # $expr)
	(println $expr " is " (eval $expr #))
)
```

