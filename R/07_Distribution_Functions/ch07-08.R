FamPlot(seq(-6, 8, length.out = 600),
        list(function(x) dnorm(x, 0, 0.5), function(x) dnorm(x, 0, 1),
             function(x) dnorm(x, 0, 2), function(x) dnorm(x, 2, 1)),
        c("N(0, 0.25)", "N(0, 1)", "N(0, 4)", "N(2, 1)"))
