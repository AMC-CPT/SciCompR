RNGkind()[1]
set.seed(8); a = runif(3)
set.seed(8); b = runif(3)
rbind(a, b)
identical(a, b)
