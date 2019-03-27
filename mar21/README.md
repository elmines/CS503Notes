# March 21 Notes

## Interpeting udn.scm
- We first insert into the frame (environment) a closure identified by udn
- We next need to evaluate the definition of z
  - We're calling udn, so we first need to extend udn's definition environment
  - We bind the argument 10 to the formal parameter x, inserting this into the extended environment
  - We then insert into the extended environment closures for up, down, get, and dispatch
  - We then return dispatch
- We next need to evaluate the definition of u
  - We extend the definition environment of the function represented by z
    - That is, we extend the environment inside udn
  - We bind 'up to op
  - We evaluate the body of dispatch, returning the closure referenced by up
- We now call `(u 5)`
  - We look up u in our current environment and get the closure
  - We extend the definition environment represented by u with a new frame
  - We bind 5 to the formal parameter y
  - We evaluate the call to `set!`
- We evaluate the definition of w
  - w will represent a different dispatch function (with a different definition environment) than z

## Interpreting udn3.scm
- We insert a closure into the root environment referenced by adjust
- We define z
  - We extend adjust's definition environment
  - We bind 5 to adjust's formal parameter x
  - We make a new closure for the lambda function
  - We return this closure, to which z now points
- We call z
  - We extend the definition environment of the lambda function represented by z
  - We insert into the extended environment the symbol y, with 13 bound to it
  - We evaluate the body `(+ x y)`


## Lusth Quotes
- "You got to grasp your inner robot."
- "It's like a Jackson Pollock painting--you think it looks random, but it's not."
- "Let's do something a little simpler, but a little harder."
- "I'd rather just go back to chalk."
- "Apparently what I say, doesn't really matter."

## DPL Scandal
- Make sure your arguments are being evaluated in the calling environment, not the extended environment
