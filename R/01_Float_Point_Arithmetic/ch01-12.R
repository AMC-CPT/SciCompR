for (v in c(1, -1, 1.5, 2, 6.5)) Show(v, FALSE)

sapply(c(1, -1, 1.5, 2, 6.5),
       function(v) attr(Bin2Dec(Dec2Bin(v, FALSE)), "Expression"))
