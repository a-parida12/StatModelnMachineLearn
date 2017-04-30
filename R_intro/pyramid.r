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

projection_matrix <- t(matrix(c(1,0,0,0,1,0), nrow =2, ncol= 3,byrow= TRUE))
pyramid_2D <- pyramid %*% projection_matrix
plot(pyramid_2D[,1],pyramid_2D[,2], type="l")

phi=0.05*pi
theta=0.3*pi

rotate_z<-matrix(c(cos(phi),-sin(phi),0,sin(phi),cos(phi),0,0,0,1), nrow =3, ncol= 3,
                 byrow= TRUE)

rotate_y<-matrix(c(cos(theta), 0, sin(theta), 0, 1, 0, -sin(theta), 0, cos(theta)),
                 nrow =3, ncol= 3, byrow= TRUE)

post_rot_z = pyramid %*% rotate_z %*% projection_matrix
post_rot_y = pyramid %*% rotate_y %*% projection_matrix
par(mfrow=c(1,2))
plot(post_rot_z, type = "l")
plot(post_rot_y, type = "l")


