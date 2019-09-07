
rm(list = ls())

k<-500
n<-1:k

u <- runif(k,0,1)

int_aprox <- cumsum((1-u^2)^(3/2))/n

plot(int_aprox, type='l',xlab = 'n',ylab = 'valor', main = 'Pregunta 04')

#valor aproximado
print(int_aprox[length(u)])


#valor real en R
f<-function(x) (1-x*x)^(3/2)
print(integrate(f,0,1))
