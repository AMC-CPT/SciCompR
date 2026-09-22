table(cut(c(1, 5, 9, 2, 7), breaks = c(0, 3, 6, 10)))
d3 = data.frame(id = 1:3, g = c("a", "b", "a"), y = c(10, NA, 30))
merge(na.omit(d3), data.frame(id = c(1, 3), s = c("m", "f")), by = "id")
table(d3$g, is.na(d3$y))
