#array
length(100:123)
4*3*2
(a1=array(100:123, dim=c(4,3,2)))
(loc=paste('loc', 1:4,sep='-'))
(product=paste('p', 1:3,sep = '%'))
(coy=paste('coy',1:2,sep='%'))
dimnames(a1)= list(loc,product,coy)
a1
apply(a1,1,sum)
apply(a1,2,sum)
apply(a1,c(1,2),sum)
apply(a1,c(2,3),sum)
?array

#data frame
(rollno = 1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'),replace=T,prob=c(.7,.3)))
(marks= floor(runif(30,50,100)))
dfl=data.frame(rollno,sname,gender,marks)
head(dfl)
str(dfl)
class(dfl)
summary(dfl)
dfl
dfl$gender
dfl$marks
dfl[,c(2,4)]
dfl[1:10,]
dfl[marks>70 & gender=='F',]
dfl[marks>70 & gender=='F', c(1,2)]
names(dfl) # name of the coloms
dim(dfl) #dimensions
aggregate(dfl$marks, by=list(dfl$gender), FUN=max)
df2=aggregate(marks~gender, data=dfl, FUN=max)
pie(x=df2$marks, col=1:2) # pie chart
barplot(df2$marks, col=1:2) # bar chart
#using dplyr
library(dplyr)











#factors
(grades=sample(c('A','B','C','D'), size=30,replace=T, prob=c(.3,.2,.4,.1)))
table(grades)
class(grades)
gradesF=factor(grades)
grades
gradesF
gradesF1=factor(grades, ordered=T)
gradesF1
gradesF2=factor(grades,ordered=T, levels=c('D','C','B','A'))
gradesF2
#data  frame
rollno= 1:3
sname= c('s1','s2','s3')
df= data.frame(rollno,sname)
df
#str dim class summary
str(df)
df$rollno
df$sname
