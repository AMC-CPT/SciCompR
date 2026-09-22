DiagRates = function(TP, FP, FN, TN)
  c(sensitivity = TP/(TP + FN), specificity = TN/(FP + TN),
    PPV         = TP/(TP + FP), NPV         = TN/(FN + TN),
    RD          = TP/(TP + FP) - FN/(FN + TN),
    RR          = (TP/(TP + FP))/(FN/(FN + TN)),
    OR          = (TP*TN)/(FP*FN))

round(cbind(value = DiagRates(90, 10, 10, 90)), 3)
