Bin2Dec(rep(0, 32))                          # (1)

Pat = list(c(1, rep(0, 31)),                 # (2)
           c(0, rep(1, 8), rep(0, 23)),      # (3)
           c(1, rep(1, 8), rep(0, 23)),      # (4)
           c(0, rep(1, 8), rep(1, 23)),      # (5)
           c(1, rep(1, 8), rep(1, 23)))      # (6)
sapply(Pat, function(b) attr(Bin2Dec(b), "Expression"))
