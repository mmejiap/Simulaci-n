rm(list = ls())

k<-5000
n<-1:k

u=runif(k,0,1)

a <- -2
b <- 2

f<-function(x) exp(x+x^2)

x=a+(b-a)*u

int_aprox1 <- cumsum((b-a)*f(x))/n
#int_aprox2 <- cumsum(exp((-2+4*u)+(-2+4*u)^2))/n
#int_aprox2 = cumsum( 4*(exp( (4*u-2)*(4*u-2+1) )) )/n

plot(int_aprox1, type = 'l',xlab = 'n',ylab = 'valor', main = 'Pregunta 05')
#plot(int_aprox2, type = 'l')

#valor aproximado
print(int_aprox1[length(u)])
#print(int_aprox2[length(u)])

#valor calculado
print(integrate(f,-2,2))
