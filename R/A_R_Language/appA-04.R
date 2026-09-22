sapply(list(1, 1L, 1+0i, TRUE, "a"), typeof)
c(typeof(c(TRUE, 1L)), typeof(c(1L, 2.5)), typeof(c(1, "a")))
c(as.numeric("1"), as.integer(2.9), utf8ToInt("L"))
