Show = function(x, Double = TRUE) {
  b = Dec2Bin(x, Double)
  k = if (Double) c(2, 12, 13, 64) else c(2, 9, 10, 32)
  cat(b[1], " ", paste(b[k[1]:k[2]], collapse = ""), " ",
      paste(b[k[3]:k[4]], collapse = ""), "\n", sep = "")
}

for (v in c(1, -1, 1.5, 2, 6.5)) Show(v)
