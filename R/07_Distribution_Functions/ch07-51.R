All = rbind(
  norm  = RelErr(c(dnorm(1), pnorm(0.6), qnorm(0.95)),
                 c(Dnorm(1), Pnorm(0.6), Qnorm(0.95))),
  lnorm = RelErr(c(dlnorm(1), plnorm(0.6), qlnorm(0.95)),
                 c(Dlnorm(1), Plnorm(0.6), Qlnorm(0.95))),
  gamma = RelErr(c(dgamma(1, 1, 2), pgamma(0.6, 1, 2), qgamma(0.95, 1, 2)),
                 c(Dgamma(1, 1, 2), Pgamma(0.6, 1, 2), Qgamma(0.95, 1, 2))),
  chisq = RelErr(c(dchisq(1, 9), pchisq(0.6, 9), qchisq(0.95, 9)),
                 c(Dchisq(1, 9), Pchisq(0.6, 9), Qchisq(0.95, 9))),
  beta  = RelErr(c(dbeta(1, 1, 2), pbeta(0.6, 1, 2), qbeta(0.95, 1, 2)),
                 c(Dbeta(1, 1, 2), Pbeta(0.6, 1, 2), Qbeta(0.95, 1, 2))),
  t     = RelErr(c(dt(1, 1), pt(0.6, 1), qt(0.95, 1)),
                 c(Dt(1, 1), Pt(0.6, 1), Qt(0.95, 1))),
  f     = RelErr(c(df(1, 3, 4), pf(0.6, 3, 4), qf(0.95, 3, 4)),
                 c(Df(1, 3, 4), Pf(0.6, 3, 4), Qf(0.95, 3, 4))),
  binom = RelErr(c(dbinom(3, 14, 0.3), pbinom(3, 14, 0.3), qbinom(0.6, 14, 0.3)),
                 c(Dbinom(3, 14, 0.3), Pbinom(3, 14, 0.3), Qbinom(0.6, 14, 0.3))),
  pois  = RelErr(c(dpois(3, 3), ppois(3, 3), qpois(0.6, 3)),
                 c(Dpois(3, 3), Ppois(3, 3), Qpois(0.6, 3))))
colnames(All) = c("d", "p", "q")
signif(All, 3)
