fy   = function(x)   5*x^6 -  36*x^5 + 165/2*x^4 -  60*x^3 + 36
fdy  = function(x)  30*x^5 - 180*x^4 +   330*x^3 - 180*x^2
fd2y = function(x) 150*x^4 - 720*x^3 +   990*x^2 - 360*x
fd3y = function(x) 600*x^3 - 2160*x^2 +  1980*x  - 360

z = polyroot(c(0, 0, -180, 330, -180, 30))
z
Re(z)[abs(Im(z)) < 1e-8]        # 허수부가 0 인 것만 고른다
