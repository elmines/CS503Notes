

## Exercise 1.5
- Normal order actually terminates
- Applicative order never terminates

## Number 8, First Content Exam
- No, it has linear time complexity but constant space complexity

## Exercise 1.6
- Special forms implement some form of normal evaluation
- Because new-if isn't a special form, all its arguments get evaluated first
- Thus, since one of the arguments to new-if is sqrt-iter, we'll have infinite recursion

## Equality
- = Tests for numeric equality
- eq? Tests for pointer (or numeric equality)
- eqval? Tests for structural equality

- A procedure is a syntactic entity, whereas a process is a runtie entity

## Number 10, First Content Exam
- It's a mixture of tail-recursive and non tail-recursive
- There are a finite number of non tail-recursive calls
- If the number of non tail-recursive calls is constant, you have an overall iterative process
- Answer: A


## Tree Recursion

```
(f x) ; What if this is called only a constant number of times?
(f y) ; If the above is true and this second call is tail-recursive, this will generate an iterative process
```

## Number 11, First Content Exam
- Again, mixed syntactically, but overall iterative at runtime


## Number 9, First Content Exam
- It's syntactically tail recursive, so it must be iterative at runtime

## The `let` construct
- Assignment changes pointers in the environment

## Number 12
- You're actually calling that function, you get back just one lambda, not a lambda that returns a lambda

## Number 13
- Here you call the lamdba returned, so you get 8

## General Test Info
- Yes, everything is multiple choice
- He'll ask us about every component of our programming language

## Problem 29
- If you
- Use match, rather than advance

## Problem 30
- When he asks about how many calls to check(), he means direct calls within that routine

