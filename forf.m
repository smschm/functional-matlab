%function fs = forf(f,r,s)
%
% Functionally implements the for loop.
%
% f: function for each iteration
% r: range of values to iterate over
% s: initial state
%
% f needs to take 2 arguments, i and s.
% i is the value of the current iteration of r, and s is the current
% value of the state; f must return the new state value.
function fs = forf(f,r,s)
for i = r
    s = f(i,s);
end
fs = s;