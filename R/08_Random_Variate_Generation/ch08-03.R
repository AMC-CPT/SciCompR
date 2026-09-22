runifLC = function(n = 1, Seed = 123457, a = 16807, m = 2147483647,
                   k = 0, b = 10) {
  if (abs(Seed) < 1) Seed = as.numeric(Sys.time())
  if (n < 1 | a < 1 | b < 1) stop("n, a, b should be positive integer!")
  X = vector(length = n)
  X[1] = Seed
  for (i in 1:b) X[1] = (a*X[1] + k) %% m       # burn-in
  for (i in 2:n) X[i] = (a*X[i - 1] + k) %% m
  return(X/(m + 1))
}

round(rbind(s123457 = runifLC(6), s1 = runifLC(6, 1), s2 = runifLC(6, 2)), 5)
x = runifLC(1e5)
c(mean = mean(x), sd = sd(x), true.sd = 1/sqrt(12))
