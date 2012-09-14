function v = tryf(tryb,catchb)
try
    v = tryb();
catch e
    v = catchb(e);
end