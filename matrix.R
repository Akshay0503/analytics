#matrix
length(100:123)
(m1= matrix(100:123, ncol=6))
(m2=matrix(c(100:123), ncol=4, byrow=T))
m2[1,2]
m2[1,]
m2[,2]
m2[1:2,]
m2[,c(1,4)]
m2[c(2,6), c(1,4)] #2& 6th row, 1st& 4th col
colSums(m2)
rowSums(m2)
rowMeans(m2)

?matrix
