%function fs = whilef(f,r,s)
%
% Functionally implements the while loop.
%
% f: function for each iteration
% p: predicate to test for finishing the loop
% s: initial state
%
% This returns f(f(f...f(f(s))...)) for the first repeated iteration of
% applying f to the state s that does not satisfy the predicate p
%
% example, implementing a 1-10 number guessing game:
%
% whilef(@(s) {s{1}, input('guess my number: ')}, @(s) s{1} ~= s{2}, {ceil(rand*10),-1})
%
% % or, using setf for more verbose, but meaningful, state:
%
% whilef(@(s) setsf(s,'guess',input('guess my number: ')),...
%        @(s) s.guess ~= s.thinking,...
%        setsf({},'thinking',ceil(rand*10),'guess',-1))

function fs = whilef(f,p,s)
while 1
    if not(p(s))
        break
    end
    s = f(s);
end
fs = s;