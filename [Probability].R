# p.18, Program 1-1
RollDie = function(n) sample(1:6, n, replace = T)
r10 = RollDie(10)
r50 = RollDie(50)
r100 = RollDie(100)
r1000 = RollDie(1000)
r10000 = RollDie(10000)
r100000 = RollDie(100000)
hist(r10, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r50, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r100, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r1000, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r10000, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r100000, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))

# p.107 Ch4.8
# 4.1
library(distrEx)
x = DiscreteDistribution(supp=c(1:6), prob=rep(1/6,6))
plot(x)

# 4.2
E(x)
var(x)
sd(x)
