tt = seq(0, 2 * pi, length.out = 400)
Cir = rbind(cos(tt), sin(tt)); Ell = Ae %*% Cir
ea = eigen(Ae); u1 = ea$vectors[, 1]; u2 = ea$vectors[, 2]
par(mar = c(2.2, 2.2, 0.6, 0.6), mgp = c(1.2, 0.35, 0), tcl = -0.2)
plot(0, 0, type = "n", asp = 1, xlim = c(-3.2, 3.2), ylim = c(-3.0, 3.4),
     xlab = "", ylab = "")
abline(h = 0, v = 0, col = "grey88")
abline(0, 1, lty = 3, col = "grey55"); abline(0, -1, lty = 3, col = "grey55")
lines(t(Cir), col = "grey45")
lines(t(Ell), lwd = 2, col = "firebrick")
arrows(0, 0, u1[1], u1[2], length = 0.07, lwd = 2, col = "grey20")
arrows(0, 0, 3 * u1[1], 3 * u1[2], length = 0.09, lwd = 2, col = "firebrick")
arrows(0, 0, u2[1], u2[2], length = 0.09, lwd = 2, col = "firebrick")
text(0.95, 0.42, "v1", col = "grey20")
text(2.45, 1.75, "A v1 = 3 v1", col = "firebrick")
text(-1.35, 1.05, "A v2 = v2", col = "firebrick", adj = 1)
text(2.6, -1.4, "unit circle", col = "grey35", adj = 1)
text(0.35, -2.55, "image ellipse", col = "firebrick", adj = 0)
