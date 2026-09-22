set.seed(2024)
Reject = function(k, mu, B = 20000)
  mean(replicate(B, t.test(rnorm(k, mu, 1), mu = 0)$p.value) < 0.05)

Reject(k = 10, mu = 0)                 # H0 is true, so this should be alpha
