set.seed(7)
Nrep = 100; Nk = 10; Mu = 5; Sg = 0.3
Cv = t(replicate(Nrep, {
  v = rnorm(Nk, Mu, Sg)
  mean(v) + c(-1, 1)*qt(0.975, Nk - 1)*sd(v)/sqrt(Nk)
}))
Hit = Cv[, 1] <= Mu & Cv[, 2] >= Mu
par(mar = c(3.4, 3.7, 0.8, 0.6), mgp = c(2.3, 0.7, 0))
plot(NA, xlim = c(1, Nrep), ylim = c(min(Cv), max(Cv) + 0.08),
     xlab = "study", ylab = "95% interval for mu")
segments(1:Nrep, Cv[, 1], 1:Nrep, Cv[, 2],
         col = ifelse(Hit, "grey55", "firebrick"),
         lwd = ifelse(Hit, 1.1, 2))
abline(h = Mu, lwd = 1.5)
legend("topright", sprintf("%d of %d cover mu", sum(Hit), Nrep), bty = "n")
