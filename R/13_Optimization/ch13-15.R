GradTol  = .Machine$double.eps^(1/3),
StepTol  = .Machine$double.eps^(2/3),
FnTol    = .Machine$double.eps^(1/3),
ItnLimit = 100
...
gH = GenD(func, x[i, ])
...
x[i + 1, ] = x[i, ] - GetP(gH$D[(DimX + 1):(DimX * (DimX + 3)/2)], gH$gr)
