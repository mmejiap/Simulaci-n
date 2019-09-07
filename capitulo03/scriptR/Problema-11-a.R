#Prob 11a

rm(list=ls())

k <- 1000
n <- 1:k

u <- runif(k,0,1)

cov <- cumsum(u*sqrt(1-u^2))/n - ( cumsum(u)/n )*( cumsum(sqrt(1-u^2))/n )

plot(cov,type='l',xlab='n',ylab = 'valor',main='Problema 11-a')

print(paste("Covarianza -> ",cov[length(u)]))
