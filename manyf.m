%function o = manyf(varargin)
%
% applies its first argument as a function to each of the remaining
% arguments, collecting them in a cell array.
%
% e.g. manyf(2,@(x) fprintf('%d\n',x),@(x) x*2)
% prints '2' and returns 4.
function o = manyf(varargin)

n = nargin;
arg = varargin{1};
o = {};
for i = 2:n
    f = varargin{i};
    o{i-1} = f(arg);
end
