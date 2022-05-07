#1-1
bank = read.table('1-1.csv', header=T, sep=',', row.names=1)

#histogram
histogram <- function() {
  par(mfrow=c(2,3))
  hist(bank$convenience)
  hist(bank$accuracy)
  hist(bank$kindness)
  hist(bank$efficiency)
  hist(bank$pleasant)
  hist(bank$automatic)
  par(mfrow=c(1,1))
}
histogram()

#scatter matrix and correlation matrix
pairs(bank)
cor(bank)

#star plot, face plot
stars(bank)
library(aplpack)
faces(bank)

#4-1
library(pls)
stock = read.csv("4-1.csv", header=T, sep=',', row.names=1)
head(stock)
summary(stock)

# 표준화
st.stock = stdize(as.matrix(stock))
st.stock

# 최단연결법
hc1= hclust(dist(st.stock), method='single')
hc1
plot(hc1, hang=-1)

# 최장연결법
hc2 = hclust(dist(st.stock), method='complete')
hc2
plot(hc2, hang=-1)

# 상관계수 이용
hc3 = hclust(dist(as.matrix(1-cor(t(st.stock)))), method='complete')
hc3
plot(hc3, hang=-1)

# K-평균 군집분석
kmc1 = kmeans(st.stock, 4)
kmc1
pairs(st.stock, col=kmc1$cluster, pch=16)


# 4-3
city = read.csv('4-3.txt', header=F, sep='', na.strings='', row.names = 1)
head(city)

#standardization
st.city = stdize(as.matrix(city))
st.city

#clustering with complete method
hc = hclust(dist(st.city), method='complete')
plot(hc, hang=-1)
cutree(hc, 2:4)

#k-mean clusteing
kmc = kmeans(st.city, 4)
kmc
pairs(st.city, col=kmc$cluster, pch=16)

cbind(kmc$cluster, cutree(hc, 4))