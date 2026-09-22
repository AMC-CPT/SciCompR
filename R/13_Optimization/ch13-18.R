par(mfrow = c(1, 2), mar = c(3.2, 3.4, 0.6, 0.6), mgp = c(2.0, 0.7, 0))

g1 = seq(-1.8, 1.8, length.out = 150)
g2 = seq(-3.4, 2.4, length.out = 150)
z  = outer(g1, g2, function(a, b) log10((1 - a)^2 + 100*(b - a^2)^2 + 1))
contour(g1, g2, z, levels = c(0.3, 0.8, 1.4, 2, 2.6, 3.2), col = "grey70",
        drawlabels = FALSE, xlab = "x1", ylab = "x2")
lines(Pd, type = "o", pch = 20, cex = 0.4, lty = 3)
lines(Pb, type = "o", pch = 20, cex = 0.4, lty = 2)
lines(Pn, type = "o", pch = 20, cex = 0.6)
points(1, 1, pch = 8)
legend("bottomright", c("Newton", "BFGS", "descent"), lty = 1:3,
       bty = "n", cex = 0.75)

fv = function(P) pmax(apply(P, 1, Rosen2), 1e-18)
plot(0:(nrow(Pn) - 1), fv(Pn), log = "y", type = "o", pch = 20, cex = 0.6,
     xlim = c(0, 60), ylim = c(1e-18, 1e3), xlab = "iteration",
     ylab = "f(x)")
lines(0:(nrow(Pb) - 1), fv(Pb), type = "o", pch = 20, cex = 0.4, lty = 2)
lines(0:(nrow(Pd) - 1), fv(Pd), type = "o", pch = 20, cex = 0.4, lty = 3)
