set.seed(55)
nI = 20; Sg = 2
Sam2 = matrix(rnorm(1e5 * nI, mean = 10, sd = Sg), nrow = nI)
ScoreSq = apply(Sam2, 2, function(v) (sum(v - 10)/Sg^2)^2)
c(square.form = mean(ScoreSq), curvature.form = nI/Sg^2)
c(inverse.info = Sg^2/nI, var.of.mean = var(colMeans(Sam2)))
