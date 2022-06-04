## Residual plots

par(mfrow = c(3,3))

# constant variance
for (i in 1:9) plot (1:50, rnorm(50))

# strong nosconstant variance
for (i in 1:9) plot (1:50, (1:50)*rnorm(50))

# mild nonconstant variance
for (i in 1:9) plot (1:50, sqrt((1:50)*rnorm(50)))

# nonlinearity
for (i in 1:9) plot (1:50, cos((1:50)*pi/25)+rnorm(50))

par(mfrow = c(1,1))



## Normality

par(mfrow = c(3,3))

# normal
for (i in 1:9) qqnorm(rnorm(50))

# lognormal
for (i in 1:9) qqnorm(exp(rnorm(50)))

# cauchy : long-tailed(platykurtic) distribution
for (i in 1:9) qqnorm(rcauchy(50))

# uniform : short-tailed(leptokurtic) distribution
for (i in 1:9) qqnorm(runif(50))

par(mfrow = c(1,1))