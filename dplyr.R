#READFILE: METHOD2
sales2=read.csv(file.choose())
str(sales2)


#deployer
sales=read.csv('./data/denco.csv')
sales
str(sales)
head(sales) #top 6 rows
unique(sales$custname) #how much unique names in data
length(unique(sales$custname))
#dplyr
names(sales)
library(dplyr)
names(sales)
sales %>% group_by(custname) %>% summarize(Revenue=sum(revenue)) %>% arrange(desc(Revenue))
#TRIUMPH iNSULATION GAVE MAXIMUM REVENUE
options(tibble.width= Inf) #display all colloms
options
df3=sales
df3[15:60]

library(dplyr)
sales %>% count(custname, sort=TRUE) %>% head(n=5)

sales %>% dplyr::group_by(custname) %>% dplyr::summarise(n= n()) %>% dplyr::arrange(desc(n)) %>% head(n=5)

#summarise by part NUm

sales %>% dplyr::group_by(partnum) %>% dplyr::summarise(n= n()) %>% dplyr::arrange(desc(n)) %>% head(n=5)
 
#which parts have highest profit: partno- sum(profit)

names(sales)
sales %>% group_by(partnum) %>% summarise(Margin=  sum(margin)) %>%
  arrange(desc(Margin)) %>% head()
#filter 
sales %>% filter(region=='01-East') %>% head()
 
df4=sales %>% group_by(region) %>% summarise(Revenue= sum(revenue)) %>% arrange(desc(Revenue))
df4
pie(x=df4$Revenue, col=1:2)
barplot(df4$Revenue)







































