# Problema 13

k <- 500

N <- rep(0,k)

for(i in 1:k){
    prod<-1
    u<-runif(1,0,1)
    n<-0
    while(prod>=exp(-3)){
        prod<-prod*u
        u<-runif(1,0,1)
        n<-n+1
    }
    N[i]<-n
}

esperanza <- cumsum(N)/(1:k)

plot(esperanza,type='l')

# parte a)
print(paste("E[N] = ", esperanza[k]))

# parte b)
print((table(N)/k)[1:7])

