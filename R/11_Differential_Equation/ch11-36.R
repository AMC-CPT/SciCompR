library(deSolve)

Stiff = function(t, y, parms) {
  list(c(u =  998*y["u"] + 1998*y["v"],
         v = -999*y["u"] - 1999*y["v"]))
}

out = ode(y = c(u = 1, v = 1), times = seq(0, 5, by = 0.01),
          func = Stiff, parms = NULL, method = "lsoda")
tail(out, 3)
