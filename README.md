functional-matlab
=================

The functions missing from MATLAB. Some useful, some not.
The first versions will focus on functional programming-like versions of the control structures, for improved use of one-liners and anonymous functions.

#### The functions, for now

- **iff**: functional if, similar to C's ?: operator

- **forf**: functional for, similar to Haskell's state monad (kind of?)

- **manyf**: apply many functions to one argument and collect them in a cell array.  This is not useful except for obfuscating functions.  Combined with forf and iff, every function can become a one-liner, but why... would you do this?

- **ix**: index an array

- **cellix**: index a cell array

#### An extremely contrived example combining the above:

     fprintf('total apples requested was: %d\n',sum(cellix(cellix(manyf(...
     'welcome to the apple store\n',@(x) fprintf(x),@(x) forf(@(i,s) iff(...
     s{2}==1,@(x) s,@(x) {[s{1};input('how many apples ')],strcmp(input(...
     'done (y/n)? ','s'),'y')}, 0),1:5,{[],0})),2),1)));

Note that this is one function call. You may make this an anonymous function, pass it to an ODE solver, perhaps.

#### Is this a joke?

No.

© 2012