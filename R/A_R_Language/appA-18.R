d5 = data.frame(g = c("a", "b", "a", "b", "a"), y = c(1, 2, 3, 4, 5))
with(d5, c(n = length(y), mean = mean(y)))
aggregate(y ~ g, data = d5, FUN = mean)
sapply(split(d5$y, d5$g), mean)
do.call(rbind, list(a = 1:3, b = 4:6))     # 여러 조각을 한 번에 쌓는다
