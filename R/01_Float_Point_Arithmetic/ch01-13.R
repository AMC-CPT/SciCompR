Show(1.1)
Show(1.1, FALSE)

format(1.1, digits = 22)
format(Bin2Dec(Dec2Bin(1.1)), digits = 22)
Bin2Dec(Dec2Bin(1.1)) == 1.1
as.numeric(Bin2Dec(Dec2Bin(1.1, FALSE))) - 1.1
