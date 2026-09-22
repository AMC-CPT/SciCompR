cat(deparse(Ppois), sep = "\n")
c(Ppois0 = Ppois(0, 3), gammq = gammq(1, 3), exact = exp(-3),
  pandemic = dpois(0, 6)^3, additive = dpois(0, 18))
