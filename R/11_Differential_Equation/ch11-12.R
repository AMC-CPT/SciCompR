TIME = seq(0, 72, by = 0.2)
ObsF = cbind(TIME, DV = rep(NA, length(TIME)))
DATF = ExpandDH(merge(ObsF, DoseHist, all = TRUE))
dim(DATF)
