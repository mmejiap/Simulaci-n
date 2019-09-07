# Problema 11-b

rm(list=ls())

k<-1000
n<-1:k

u<-runif(k,0,1)

cov <- cumsum((u^2)*sqrt(1-u^2))/n - (cumsum(u^2)/n)*(cumsum(sqrt(1-u^2))/n)

plot(cov, type='l',xlab='n',ylab='valor',main='Problema 11-b')

print(paste("Covarianza -> ",cov[k]))
