rm(list = ls())

k<-1000
n<-1:k

x<-runif(k,0,1)
y<-runif(k,0,1)

f<-function(x,y) exp((x+y)^2)
                            
int_aprox <- cumsum( f(x,y) )/n

#valor aproximado
print(int_aprox[length(x)])
plot(int_aprox,type = 'l',xlab = 'n',ylab = 'valor', main = 'Pregunta 08')

#valor calculado
#print(integrate2(f, 0, 1, 0, 1))
#library('rmutil')
#help(int2)
print(int2(f, a=c(0,0), b=c(1,1)))

