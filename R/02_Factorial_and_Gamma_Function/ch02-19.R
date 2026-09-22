par(mar = c(3.4, 3.6, 0.8, 0.8), mgp = c(2.2, 0.7, 0))
xg     = seq(2, 260, by = 0.5)
viaLog = lgamma(xg)/log(10)                        # 늘 유한하다
direct = suppressWarnings(log10(gamma(xg)))        # 171.61 부터 Inf

plot(xg, viaLog, type = "l", lwd = 1.6, col = "#1F5673", xlab = "x",
     ylab = "log10 of Gamma(x)")
lines(xg[is.finite(direct)], direct[is.finite(direct)], lwd = 4.5,
      col = "#B4451F")
abline(h = log10(.Machine$double.xmax), lty = 2, col = "grey40")
abline(v = 171.61, lty = 3, col = "grey40")
legend("topleft", bty = "n", cex = 0.85, lwd = c(1.6, 4.5),
       col = c("#1F5673", "#B4451F"),
       legend = c("lgamma (log scale)", "gamma (direct)"))
text(178, 60, "x = 171.61", cex = 0.85, adj = 0)
