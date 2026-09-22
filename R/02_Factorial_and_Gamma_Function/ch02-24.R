nr = rbind(c(3,1), c(4,2), c(10,5), c(100,50),
           c(1000,500), c(2000,1000))
data.frame(n = nr[, 1], r = nr[, 2],
           Choose = sapply(seq_len(nrow(nr)),
                    function(i) format(Choose(nr[i, 1], nr[i, 2]),
                                       digits = 7)))
