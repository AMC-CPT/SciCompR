St = attr(out, "istate")
c(steps = St[2], evaluations = St[3], jacobians = St[14])
attr(out, "rstate")[5]        # 방법을 바꾼 시각
