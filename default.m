function v = default(exp,d)
try
    v = exp();
catch e
    v = d;
end