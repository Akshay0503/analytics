?mean
x <- c(0:10,50)
seq(2,100,2)
x[c(seq(1,12,2))]
x[x==5]
#vectors
v1=c(1,2,3,4,5)
class(v1)
v1
v1[v1==4]=7
v1
?class
v2=c('a','b','c','d','e')
v2
class(v2)
v3=c(TRUE,FALSE,T,F)
class(V3)
v2[3]
set.seed(100)
v7=rnorm(100, mean=60, sd=15)
v7
mean(v7)
sd(v7)
?rnorm
hist(v7)
hist(v7, breaks=15, col=1:15)
hist(v7, freq=F, col='yellow', main='', xlab='marks', ylab='Density of counts', xlim=c(0,110), ylim=c(0,0.05))
lines(density(v7), col='red', lty=1, lwd=3)
title(main='pune university', sub='MBA')
?hist

