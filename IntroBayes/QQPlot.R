N=runif(20,0,1)

hist(N,breaks = 5)
abline(h=4)
## It is expected when we get a uniform distrubution we expect
## they will be equally divided into the no breaks

plot.ecdf(N)
abline(0,1)
## It is expected when we get a uniform distrubution we expect
## when the horizontal line is integrated it will be a str. line with slope 1

par(mfrow=c(2,2))
for (N in c(10,100,1000, 10000)){
  x=rnorm(N)
  plot(ecdf(x), main=N)
}

par(mfrow=c(2,2))
for (N in c(10,100,1000, 10000)){
  x=rnorm(N)
  qqnorm(x,main=N)
  abline(0,1)
}
