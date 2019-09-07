rm(list = ls())

k <- 5000
n <- 1:k

u <- runif(k,0,1)
v <- runif(k,0,1)

x<-1/u-1
y<-1/v-1

f<-function(x,y) exp(-(x+y))

int_aprox <- cumsum( (u<v)*(f(x,y))*(1/(u*v)^2) )/n


#valor calculado
#print(int2(f, a=c(0,0), b=c(1,x)))
print(int_aprox[length(u)])


plot(int_aprox,type = 'l',xlab="n", ylab="valor",main="Problema 09")
