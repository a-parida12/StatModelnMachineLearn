p1= c(-1,-1,0)
p2= c(-1,1,0)
p3= c(1,1,0)
p4= c(1,-1,0)
p5= c(0,0,2)

v = seq(0,1,0.05)

e1 = v %o% (p2-p1) + rep(1,21) %o% p1
e2 = v %o% (p3-p2) + rep(1,21) %o% p2
e3 = v %o% (p4-p3) + rep(1,21) %o% p3
e4 = v %o% (p1-p4) + rep(1,21) %o% p4
e5 = v %o% (p5-p1) + rep(1,21) %o% p1
e6 = v %o% (p5-p2) + rep(1,21) %o% p2
e7 = v %o% (p5-p3) + rep(1,21) %o% p3
e8 = v %o% (p5-p4) + rep(1,21) %o% p4

pyramid = rbind(e1,e2,e3,e4,e5,e6,e7,e8)

