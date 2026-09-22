Rweibull2 = function(n, b, c) return(b*(-log(runif(n)))^(1/c))
Rdiscrete = function(n, Val, Prob) {
  return(Val[findInterval(runif(n), cumsum(Prob)) + 1])
}

set.seed(8)
c(sample = mean(Rweibull2(1e5, 2, 3)), true = 2*gamma(1 + 1/3))
table(Rdiscrete(1e5, c(10, 20, 30, 40), c(0.1, 0.2, 0.3, 0.4)))/1e5
