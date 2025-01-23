#lang sicp

#|

An interpreter that uses applicative-order evaluation will “evaluate the arguments and then apply”. When this kind of interpreter evaluates the expression (test 0 (p)), it will perform the evaluation process on each element of the combination.

It starts by evaluating the symbol test that returns the compound procedure previously defined.

Then it evaluates 0 that returns the numeral O.

Finally, it tries to evaluate the argument (p) and this is where things are getting tricky. When the interpreter evaluates the expression (p), we can look at the rules mentioned above and follow step by step:

    “Evaluate the subexpressions of the combination.” The symbol p will evaluate to the compound procedure defined and since there is no other subexpression here, there is nothing more to do.

    “Apply the procedure that is the value of the leftmost subexpression (the operator) to the arguments that are the values of the other subexpressions (the operands).” The operator is a compound procedure f and there is no argument.

    “To apply a compound procedure to arguments, evaluate the body of the procedure with each formal parameter replaced by the corresponding argument.” Since there is no formal parameter in this case, the body of the procedure that needs to be evaluated is just (p), by its definition. But the interpreter has reached a step that, in order to interpret (p), it has to evaluate (p) recursively. The interpreter is in an infinite loop!

In conclusion, evaluating (test 0 (p)) with an interpreter that uses applicative-order evaluation will result in an infinite loop.

|#

#|

When an interpreter uses normal-order evaluation, it will “fully expand and then reduce”. In this model, the interpreter will not evaluate the operands until their values are actually needed. In that case, the expression (test 0 (p)) will be expanded to:

(if (= 0 0)
    0
    (p))

Since the predicate (= 0 0) evaluates to #t in the if expression, then the alternative (p) will not be evaluated and the result will be 0

|#
