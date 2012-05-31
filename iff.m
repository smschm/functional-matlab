%function r = iff(q,t,f,x)
%
% returns t(x) if q is true, f(x) otherwise.
% this is very useful.
%
% Q: Why not just return t if true or f if false, why make them functions?
% A: Because MATLAB evaluates its arguments, and so something like:
%
%     iff(x == 0,fprintf('x is zero\n'),fprintf('x is non-zero\n'));
%
% would not do the right thing.
%
% Additionally, this gives it more unnecessary FP flavor.

function r = iff(q,t,f,x)
if q; r = t(x); else; r = f(x); end;