Cohort = function(n, d, wMean, wSd) {
  Age = numeric(n); WT = numeric(n)
  i = 1
  while (i <= n) {
    a = sample(20:89, 1)                # proposal: uniform over 20-89
    g = findInterval(a, AgeLB)          # which five-year group
    if (runif(1) < d[g]) {              # accept with probability d[g]
      Age[i] = a
      WT[i] = rnorm(1, wMean[g], wSd[g])
      i = i + 1
    }
  }
  return(data.frame(Age = Age, WT = WT))
}

set.seed(202605)
Demog = rbind(data.frame(Sex = "M", Cohort(Nm, dM, wM, sM)),
              data.frame(Sex = "F", Cohort(Nf, dF, wF, sF)))
Demog$ID = 1:nrow(Demog)
aggregate(cbind(Age, WT) ~ Sex, Demog, mean)
