rm(list = ls())

k<-500
n<-1:k

u=runif(k,0,1)

f <- function(x) exp(-x^2)

int_aprox <- cumsum( 2*f(1/u-1)/(u^2) )/n

#valor aproximado
print(int_aprox[length(u)])
plot(int_aprox,type = 'l',xlab = 'n',ylab = 'valor', main = 'Pregunta 07')

#valor calculado
print(integrate(f,-Inf,Inf))
    

