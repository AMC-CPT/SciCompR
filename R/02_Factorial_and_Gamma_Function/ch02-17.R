tryCatch(gamma(0), warning = function(w) conditionMessage(w))
c(right = gamma(1e-8), left = gamma(-1e-8))
