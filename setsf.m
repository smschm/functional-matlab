%function s = setsf(varargin)
%
% sets struct values; takes a struct and pairs of quoted field names and values,
% sets them, and returns the struct; e.g.
%
% setsf(tmp,'field1',5,'name','my struct')
%
% equivalent to:
% tmp.field1 = 5; tmp.name = 'my struct'; tmp

function s = setsf(varargin)
s = varargin{1};
for i = 1:floor((nargin-1)/2)
    s.(varargin{i*2}) = varargin{i*2+1};
end