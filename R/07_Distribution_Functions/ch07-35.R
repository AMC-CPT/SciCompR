nu = 8:9
cbind(nu, "P(|T|<=1)" = pt(1, nu) - pt(-1, nu),
          "P(|T|<=2)" = pt(2, nu) - pt(-2, nu))
