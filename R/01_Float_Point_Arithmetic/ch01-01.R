BitLayout = function(Bits, Bias) {
  Right = cumsum(Bits); Left = Right - Bits; Mid = (Left + Right)/2
  par(mar = c(0.2, 0.2, 0.2, 0.2))
  plot(0, 0, type = "n", xlim = c(-2, sum(Bits) + 2), ylim = c(-1.9, 1.5),
       axes = FALSE, xlab = "", ylab = "")
  rect(Left, -0.3, Right, 0.7, border = "grey25",
       col = c("grey78", "grey88", "grey96"))
  text(Mid, 0.2, c("s", "exponent", "fraction"))
  text(Mid, 1.1, paste0(Bits, " bit"), cex = 0.9)
  text(Mid, -0.85, cex = 0.85,
       paste0("bit ", Left + 1, c("", "-", "-"), c("", Right[-1])))
  text(Mid[2], -1.6, paste("bias", Bias), cex = 0.85)
}

BitLayout(c(1, 8, 23), 127)
