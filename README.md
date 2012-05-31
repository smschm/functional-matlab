functional-matlab
=================

The functions missing from MATLAB. Some useful, some not.
The first versions will focus on functional programming-like versions of the control structures, for improved use of one-liners and anonymous functions.

#### The functions, for now

- **iff**: functional if, similar to C's ?: operator

- **forf**: functional for, similar to Haskell's state monad (kind of?)

- **manyf**: apply many functions to one argument and collect them in a cell array.  This is not useful except for obfuscating functions.  Combined with forf and iff, every function can become a one-liner, but why... would you do this?