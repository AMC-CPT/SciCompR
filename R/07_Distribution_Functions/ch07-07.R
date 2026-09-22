library(mathr)

RelErr = function(a, b) ifelse(a == 0, abs(b - a), abs(b - a)/abs(a))

Compare = function(bi, fm) {
  m = rbind(R = bi, mathr = fm, rel.err = RelErr(bi, fm))
  colnames(m) = c("d", "p", "q")
  m
}

FamPlot = function(xg, dl, leg, ylim = NULL, pos = "topright",
                   under = NULL, ulab = NULL, xlab = "y", ylab = "f(y)") {
  par(mar = c(3.4, 3.8, 0.8, 0.6), mgp = c(2.4, 0.7, 0))
  Y = sapply(dl, function(f) f(xg))
  k = ncol(Y)
  if (is.null(ylim)) ylim = c(0, max(Y[is.finite(Y)]))
  plot(0, type = "n", xlim = range(xg), ylim = ylim, xlab = xlab, ylab = ylab)
  lt = 1:k; lw = rep(1.7, k); cl = rep("black", k)
  if (!is.null(under)) {
    lines(xg, under(xg), lwd = 5, col = "grey78")
    lt = c(lt, 1); lw = c(lw, 5); cl = c(cl, "grey78"); leg = c(leg, ulab)
  }
  matlines(xg, Y, lty = 1:k, col = 1, lwd = 1.7)
  legend(pos, bg = "white", box.col = "white", seg.len = 3,
         lty = lt, lwd = lw, col = cl, legend = leg)
}

RelErr(pnorm(0.6), Pnorm(0.6))
