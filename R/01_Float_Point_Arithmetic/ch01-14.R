for (v in c(1.2, 1.3, 1.4, 1.5)) {
  cat(sprintf("%.1f  single: %-20s double: %s\n", v,
      attr(Bin2Dec(Dec2Bin(v, FALSE)), "Expression"),
      attr(Bin2Dec(Dec2Bin(v)), "Expression")))
}
