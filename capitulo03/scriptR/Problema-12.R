# Problema 12
rm(list=ls())

k<-10000
N=rep(0,k)

for(i in 1:k){
    u<-runif(1,0,1)
    suma<-0
    n<-0
    while(suma<1){
        suma<-suma+u
        u<-runif(1,0,1)
        n<-n+1
    }
 N[i]<-n   
}
esperanza=cumsum(N)/(1:k)
plot(esperanza,type='l',xlab='n',ylab='valor',main='Problema 12')

print(paste("Esperanza -> ",esperanza[k]))

