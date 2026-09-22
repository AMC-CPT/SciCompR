Nd = matrix(c(1, 2, 2, 1), ncol = 2)       # symmetric but indefinite
eigen(Nd)$values                           # one of them is negative
tryCatch(chol(Nd), error = function(e) conditionMessage(e))
