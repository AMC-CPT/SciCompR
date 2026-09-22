Rosen2 = function(x) (1 - x[1])^2 + 100*(x[2] - x[1]^2)^2   # n = 2

g1 = seq(-2, 2, length.out = 160)
g2 = seq(-1, 3, length.out = 160)
z  = outer(g1, g2, function(a, b) log10((1 - a)^2 + 100*(b - a^2)^2 + 1))

par(mar = c(3.2, 3.4, 0.6, 0.6), mgp = c(2.0, 0.7, 0))
contour(g1, g2, z, levels = c(0.1, 0.3, 0.6, 1, 1.5, 2, 2.5, 3, 3.5),
        col = "grey55", xlab = "x1", ylab = "x2", labcex = 0.55)
curve(x^2, -2, 2, add = TRUE, lty = 2)
points(1, 1, pch = 19)
text(1, 1, "(1, 1)", pos = 4, cex = 0.9)
