par(mar = c(0.2, 0.2, 0.2, 0.2))
plot(NA, xlim = c(0.4, 4.7), ylim = c(4.7, 0.3), axes = FALSE,
     xlab = "", ylab = "")
for (n in 2:4) {
  for (m in 1:(n - 1)) {
    arrows(m + 0.46, n, m + 0.54, n, length = 0.05, col = "grey40")
    arrows(m + 0.40, n - 0.74, m + 0.56, n - 0.28, length = 0.05,
           col = "grey40")
  }
}
for (n in 1:4) {
  for (m in 1:n) {
    rect(m - 0.44, n - 0.24, m + 0.44, n + 0.24, col = "grey93",
         border = "grey55")
    text(m, n, paste0("R(", n, ",", m, ")"), cex = 0.95)
  }
}
