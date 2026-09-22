Bin2Dec(c(0, rep(1, 63)))                 # 지수부 전부 1, 가수부 0 아님
Bin2Dec(c(0, rep(1, 11), rep(0, 52)))     # 지수부 전부 1, 가수부 0

format(Bin2Dec(c(0, rep(1, 10), 0, rep(1, 52))), digits = 22)
format(.Machine$double.xmax, digits = 22)
