#2-(2)
n=1000
x1 = rexp(n, 1)
x2 = rexp(n, 1)
x3 = rexp(n, 1)
sum = x1 + x2 + x3
plot(density(sum, bw=0.8))
mean(sum)
var(sum)

#3
clt <- function(n){
  m = rep(NA, n)
  for(i in 1:n) 
    m[i] = mean(rexp(i,1))
  hist(m, prob=T, col='pink', main=paste("Histogram of", n))
}
par(mfrow=c(2,2))
clt(2)
clt(10)
clt(50)
clt(100)
