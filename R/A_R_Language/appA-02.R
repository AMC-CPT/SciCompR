c(length(c(1, NA, 3)), length(c(1, NULL, 3)))
x = c(1, NA, 3)
c(sum(x), sum(x, na.rm = TRUE))   # 하나만 결측이어도 합은 NA 다
