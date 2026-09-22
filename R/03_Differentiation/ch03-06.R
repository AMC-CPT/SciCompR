Fq = function(x1, x2) x1^2 + 3*x2^2        # 기울기벡터는 (2*x1, 6*x2)
g1 = seq(-3, 3, length.out = 80)
g2 = seq(-2, 2, length.out = 80)

par(mar = c(3.4, 3.4, 1.0, 0.8), mgp = c(2.1, 0.7, 0))
contour(g1, g2, outer(g1, g2, Fq), nlevels = 9, col = "grey55",
        xlab = "x1", ylab = "x2", asp = 1, labcex = 0.55)
Pt = cbind(c(-2, 1.6, 2.4, -1), c(1.1, -1.1, 0.7, -0.5))
arrows(Pt[, 1], Pt[, 2], Pt[, 1] + 0.10*2*Pt[, 1],
       Pt[, 2] + 0.10*6*Pt[, 2], length = 0.07, lwd = 1.6)
points(Pt, pch = 19, cex = 0.7)
