x=seq(-2,2,length.out = 100)

v_max=(1+sqrt(5))/2
v_min=(1-sqrt(5))/2
m=c(v_max,v_min)
plot (x,x*exp(-((x-1)**2)/2), col='red')


abline(v=m)
