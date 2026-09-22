cat(deparse(MachEps2), sep = "\n")

c(`(1)` = MachEps2(100, 1), `(2)` = MachEps2(1, 0.8))
MachEps2(100, 1)/2^-52
MachEps2(1, 0.8)/2^-52
