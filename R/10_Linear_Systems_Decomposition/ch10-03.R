Lin = function(a, b, c, ...) {              # draw a x + b y = c
  if (abs(b) > 1e-12) abline(a = c/b, b = -a/b, ...)
  else abline(v = c/a, ...)
}
Stage = function(rows, main) {
  plot(0, 0, type = "n", xlim = c(-1, 5), ylim = c(-2, 4), asp = 1,
       xlab = "", ylab = "", main = main, cex.main = 0.95)
  abline(h = 0, v = 0, col = "grey88")
  Lin(rows[1, 1], rows[1, 2], rows[1, 3], lwd = 2, col = "grey35")
  Lin(rows[2, 1], rows[2, 2], rows[2, 3], lwd = 2, col = "firebrick")
  points(2, 1, pch = 16, cex = 1.1)
}
par(mfrow = c(1, 3), mar = c(2.0, 2.0, 1.8, 0.5), mgp = c(1.1, 0.3, 0),
    tcl = -0.2)
Stage(rbind(c(4, 2, 10), c(2, -1, 3)), "original")
Stage(rbind(c(4, 2, 10), c(0, 4, 4)), "after column 1")
Stage(rbind(c(1, 0, 2), c(0, 1, 1)), "after column 2")
