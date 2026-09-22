par(mar = c(0, 0, 0, 0))
plot(0, 0, type = "n", xlim = c(0, 100), ylim = c(2, 32),
     axes = FALSE, xlab = "", ylab = "")
Box = function(x, y, lab) {
  rect(x - 11, y - 6, x + 11, y + 6, border = "grey30")
  text(x, y, lab)
}
Box(18, 22, "GI"); Box(52, 22, "Central"); Box(86, 22, "Peripheral")
arrows(2, 22, 7, 22, length = 0.06); text(4.5, 29, "dose", cex = 0.9)
arrows(29, 22, 41, 22, length = 0.06); text(35, 27, expression(k[a]))
arrows(63, 25, 75, 25, length = 0.06); text(69, 30, expression(k[12]))
arrows(75, 19, 63, 19, length = 0.06); text(69, 14, expression(k[21]))
arrows(52, 16, 52, 5, length = 0.06); text(58, 10, expression(k[10]))
