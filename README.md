functional-matlab
=================

The functions missing from MATLAB. Some useful, some not.
The first versions will focus on functional programming-like versions of the control structures, for improved use of one-liners and anonymous functions.

#### The Functions:

- **iff**: functional if, similar to C's ?: operator

- **forf**: functional for, similar to Haskell's state monad (kind of?)

- **manyf**: apply many functions to one argument and collect them in a cell array.
  This can sequence an arbitrary number of operations together.
  Combined with forf and iff, every function can become a one-liner!

- **ix**: index an array

- **cellix**: index a cell array

- **whilef**: functional while

- **getsf**: get struct fields

- **setsf**: set struct fields

- **tryf**: functional try/catch

- **idf**: the identity function

#### Non-basic Functions:

- **default**: try evaluating an expression and return a default on error

#### A contrived example combining the above:

     fprintf('total apples requested was: %d\n',sum(cellix(cellix(manyf(...
     'welcome to the apple store\n',@(x) fprintf(x),@(x) forf(@(i,s) iff(...
     s{2}==1,@(x) s,@(x) {[s{1};input('how many apples ')],strcmp(input(...
     'done (y/n)? ','s'),'y')}, 0),1:5,{[],0})),2),1)));

Or broken down a bit, and adding more semantic meaning: (remove the comments to run)

     fprintf('total apples requested was: %d\n',...
             getsf(cellix(...
             manyf('welcome to the apple store\n',@(x) fprintf(x),...
                   @(x) whilef(@(s) setsf(s,...
                                    % ask for a number of apples; add it to s.total...
                                    'total',getsf(s,'total')+input('how many apples '),...
                                    % then ask if we're done and set the response to s.done...
                                    'done', input('done (y/n)? ','s')),...
                               % the predicate to whilef: stop if this is false:...
                               @(s) not(strcmp(s.done,'y')),...
                               setsf({},'total',0,'done','n'))),...
             % the 2 belongs to cellix (extracting the struct, and not the useless value)...
             % returned by printf;...
             % the total belongs to getsf...
             2),'total'))

Note that these are one function call. You may make this an anonymous function, pass it to an ODE solver, perhaps.
It is guaranteed to not clutter your workspace with variables; in fact, no variable ever gets a name, it just gets threaded through
function calls.

#### Is this a joke?

No.

© 2012