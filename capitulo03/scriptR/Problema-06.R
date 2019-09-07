rm(list = ls())

k<-1000
n<-1:k

u<-runif(k,0,1)

f <- function(x) (x*(1+x^2)^(-2))

int_aprox <- cumsum(f(1/u-1)/(u^2))/n
plot(int_aprox,type = 'l',xlab = 'n',ylab = 'valor', main = 'Pregunta 06')

#valor aproximado
print(int_aprox[length(u)])

#valor calculado
print(integrate(f,0,Inf))
