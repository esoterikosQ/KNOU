library(ISwR)

# p.16
oops <- c(7,9,13)
rep(oops,3)
rep(oops, 1:3)

rep(1:2, each=10)

# p.17
x <- 1:12
dim(x) <- c(3,4)
x

matrix(1:12, nrow=3, byrow=T)

# p.18
cbind(A=1:4, B=5:8, C=9:12)
rbind(A=1:4, b=5:8, C=9:12)

# p.24
intake.pre <- c(5260, 5470, 5640, 6180, 6390, 6515, 6805, 7517, 7515, 8230, 8770)
intake.post <- c(3910, 4220, 3885, 5160, 5645, 4680, 5265, 5975, 6790, 6900, 7335)
d <- data.frame(intake.pre, intake.post)
d

sel <- d$intake.pre>7000
sel
d[sel,]

# p.25
energy
exp.lean <- energy$expend[energy$stature=='lean']
exp.obese <- energy$expend[energy$stature=='obese']
exp.lean
exp.obese

l <- split(energy$expend, energy$stature)
l

# p.26
lapply(thuesen, mean, na.rm=T)
sapply(thuesen, mean, na.rm=T)

replicate(10, mean(rexp(20)))

tapply(energy$expend, energy$stature, median)

# p.28
order(intake$post)
o <- order(intake$post)
intake$post[o]
intake$pre[o]
intake.sorted <- intake[o,]
intake.sorted

# p.28 Exercises 
# 1.1
juul[na.omit(juul$sex==juul$tanner),]

# 1.3
juul[na.omit(juul$age) >=7 & na.omit(juul$age) < 14,]

# 1.5
replicate(10, mean(rexp(20)))
sapply(rexp(20), mean, replicate=10)


# t-test
daily.intake <- c(5260, 5470, 5640, 6180, 6390, 6515, 6805, 7515, 7515, 8230, 8770)
mean(daily.intake)
sd(daily.intake)
quantile(daily.intake)
t.test(daily.intake, mu=7725)

# Wilcoxon signed-rank test
wilcox.test(daily.intake, mu=7725)

# Two-sample t test
t.test(expend~stature)





