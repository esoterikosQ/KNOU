# import data & packages
library(forecast); library(tseries); library(ggplot2); library(reshape)
mmi <- read.csv('mmi.csv', header=T, sep=',')
mmi <- mmi[,-1]

# to transform into time-series data
mmi_ts <- ts(mmi, start=1982, frequency=12)


# time-series plot
ggplot(melt(data.frame(time=as.numeric(time(mmi_ts)), mmi_ts), id.vars='time'), 
       aes(time, value, color=variable, xlab='Time', ylab='Index')) +
  geom_line() +
  labs(x='', y='Rate', title='Mining and Manufacturing Industires Index(Jan 1982 - Dec 2018)', caption='data from Bank of Korea') +
  scale_color_discrete(name=NULL, labels=c('Original', 'SA'))


# spectrum
q2 <- function(){
  data <- get('mmi_ts', envir = .GlobalEnv)
  par(mfrow=c(2,1))
  par(mar=c(2,2,2,2))
  spectrum(data[,1], spans=c(3,3), main='MMI Index Original', col='red')
  spectrum(data[,2], spans=c(3,3), main='MMI Index Season-Adjusted', col='red')
}
q2()


# difference
mmi_sa <- mmi_ts[,2]
mmi_sa.diff <- diff(mmi_sa)
adf.test(mmi_sa)
adf.test(mmi_sa.diff)

# acf and pacf
q3.2.1 <- function(){
  data <- get('mmi_sa', envir = .GlobalEnv)
  par(mfrow=c(2,1))
  acf(data, main='MMI Index SA'); acf(diff(data), main='MMI Index SA&Diff')
}
q3.2.1()

q3.2.2 <- function(){
  data <- get('mmi_sa', envir = .GlobalEnv)
  par(mfrow=c(2,1))
  pacf(data, main='MMI Index SA'); pacf(diff(data), main='MMI Index SA&Diff')
}
q3.2.2()

