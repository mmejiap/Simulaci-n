rm(list = ls())
k<-10
x <- rep(0,k)
x[1] <- 5
for(i in 2:(k+1)){
     x[i] <- (3*x[i-1])%%150
}
print(x[2:(k+1)])
