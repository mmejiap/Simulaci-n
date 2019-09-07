rm(list = ls())
k<-10
x<-rep(0,k)
x[1]<-3
for(i in 2:(k+1)){
    x[i]<-(5*x[i-1]+7)%%200
}
print(x[2:(k+1)])
