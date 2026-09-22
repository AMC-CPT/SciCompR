set.seed(14)
y = rnorm(500, mean = 10, sd = 2)
c(product = prod(dnorm(y, 10, 2)), xmin = .Machine$double.xmin)
sum(dnorm(y, 10, 2, log = TRUE))
