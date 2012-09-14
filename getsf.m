%function v = getsf(s,f)
%
% gets struct values; takes a struct and the name of a field, and gets it.
%
% getsf(s,'f') is equivalent to s.f

function v = getsf(s,f)
v = s.(f);