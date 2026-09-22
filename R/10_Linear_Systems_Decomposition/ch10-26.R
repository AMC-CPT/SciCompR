Pm = Xa %*% solve(t(Xa) %*% Xa) %*% t(Xa)
round(Pm, 4)
max(abs(Pm %*% Pm - Pm))         # idempotent: projecting twice is the same
sum(diag(Pm))                    # the trace equals the rank
drop(Pm %*% bv)                  # the same projection
