%function s = summing(f,range)
%
% returns \sum_{i\in range} f(i)
%

function s = summing(f,range)

s = 0;
for i = (1:numel(range))
    s = s + f(range(i));
end
