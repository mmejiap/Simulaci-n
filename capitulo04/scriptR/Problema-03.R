rm(list=ls())

p <- c(0.3, 0.2, 0.35, 0.15)

pAcum <- cumsum(p)

#plot(pAcum)

k<-1000
u<-runif(1,0,1)
n<-1:k

X <- rep(0,k)

for (i in n) {
  j<-1
  u<-runif(1,0,1)
  while (u>=pAcum[j]) {
    j<-j+1
  }
  X[i]<-j
}

nn <- tabulate(X)

barplot(nn)