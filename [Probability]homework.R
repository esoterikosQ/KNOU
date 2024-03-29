RollDie = function(n) sample(1:6, n, replace = T)
r20 = RollDie(20)
r200 = RollDie(200)
r2000 = RollDie(2000)
r20000 = RollDie(20000)
par(mfrow=c(2,2))
hist(r20, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r200, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r2000, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))
hist(r20000, br = c(0,1,2,3,4,5,6), main= '', freq=F, ylab='Relative Frequency', ylim=c(0,0.5))