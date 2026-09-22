Tobs = (mean(w) - 5)/(sd(w)/sqrt(length(w)))
c(t = Tobs, critical = qt(0.975, df = 9),
  p.value = 2*pt(-abs(Tobs), df = 9))
