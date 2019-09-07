rm(list = ls())

k <- 1000
n <- 1:k

u <- runif(k,0,1)

cov = cumsum(u*exp(u))/n - (cumsum(u)/n )*(cumsum(exp(u))/n)

plot(cov,type='l',xlab='n',ylab = 'valor',main='Problema 10')

print(paste("Covarianza -> ",cov[length(u)]))
