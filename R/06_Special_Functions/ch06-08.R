ulps = function(a, b) (a - b) / 2^(floor(log2(abs(b))) - 52)

format(c(sqrt = sqrt(0.5), SQRT = SQRT(0.5)), digits = 22)
ulps(SQRT(0.5), sqrt(0.5))
