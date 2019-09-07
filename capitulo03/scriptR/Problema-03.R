rm(list=ls())

k<-500
n<-1:k

u=runif(k,0,1)

int_aprox <- cumsum(exp(exp(u)))/n

plot(int_aprox, type = 'l')

#valor aproximado
print(int_aprox[length(u)])

#valor real en R
f<-function(x) exp(exp(x))
print(integrate(f,0,1))

