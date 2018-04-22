#dataframe
(rollno= paste('s', 1:30, sep='-'))
(sname= paste0('Student', 1:30, sep='- ', 'XYZ'))
(gender= sample(c('M','F'),size=30, replace= T,prob=c(.5,.5)))
(age=floor(runif(30,22,60)))
(course=sample(c('BTECH','MTECH','PHD'), size=30, replace=T,prob=c(.3,.4,.3)))
(marks=round(rnorm(30,mean=55,sd=10)))
(married=sample(c('TRUE','FALSE'),size=30,replace=T,prob=c(.5,.5)))
df1=data.frame(rollno,sname,gender,age,course,marks,married)
df1


#export to csv
write.csv(df1,'./data/pumba.csv', row.names=F)

