dt = 0.1
tg = seq(0, 12, by = dt)
Input = 2*exp(-tg)                  # true input rate
Disp  = exp(-0.3*tg)                # unit disposition
Obs   = conv(Input, Disp)*dt        # exact response, no noise

set.seed(1234)
ObsN = Obs + rnorm(length(Obs), 0, 0.01)   # 0.8% of the peak

Rec  = deconv(Obs,  Disp)/dt
RecN = deconv(ObsN, Disp)/dt

par(mfrow = c(1, 2), mar = c(4, 4, 2.4, 1))
plot(tg, Obs, type = "l", lwd = 2, xlab = "Time", ylab = "Response",
     main = "Observation")
lines(tg, ObsN, col = "grey50")
plot(tg, Input, type = "l", lwd = 2, ylim = c(-0.6, 2.6), xlab = "Time",
     ylab = "Input rate", main = "Recovered input")
lines(tg, RecN, col = "grey50")

c(noise.sd = 0.01, err.clean = max(abs(Rec - Input)),
  err.noisy = max(abs(RecN - Input)))
