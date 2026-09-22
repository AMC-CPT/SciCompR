Sens = 0.95; Spec = 0.95
Ppv = function(prev) Sens*prev/(Sens*prev + (1 - Spec)*(1 - prev))

Prev = c(0.5, 0.1, 0.01, 0.001)
data.frame(prevalence = Prev, PPV = round(Ppv(Prev), 4))
