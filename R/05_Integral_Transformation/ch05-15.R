IV = c(100, 88, 72, 65, 48, 36)
PO = c(0, 58, 76, 63, 41, 18)

StepSize = 0.05
time = 0:5
tmax = max(time)                          # 5 hours of observation

nIV = spline(time, IV, n = tmax/StepSize + 1)
nPO = spline(time, PO, n = tmax/StepSize + 1)

inrate = deconv(nPO$y, nIV$y)/StepSize
c(negative = sum(inrate < 0), total = length(inrate))   # before clipping

inrate[inrate < 0] = 0                    # regularisation: no negative input
round(inrate[nIV$x %in% time], 3)
