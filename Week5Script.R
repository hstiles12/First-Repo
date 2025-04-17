read_csv("dataset2.csv",col_names=c("a","b","c"))
read_csv("dataset3.csv",skip = 2)
read_csv("people.csv",skip=2,col_names=c("name","age","city"))
read_csv("scores.csv")
perf <- read_csv("scores.csv")

table1
table2
table4a
library(ggplot2)
ggplot(data=table1,aes(year,cases, color=country))+geom_point() + geom_line()
pivot_wider(table2,names_from = "type",values_from = "count")
filter(table2,type=="cases")
pivot_longer(table4a,cols=c("1999","2000"),names_to="year",values_to="cases")
table3            
separate(table3,rate,c("cases","population"),convert=TRUE)

read_csv("stocks.csv") -> stocks
stocks2 <- pivot_wider(stocks,names_from=qtr,values_from=return)
pivot_longer(stocks2, c("1","2","3","4"),names_to="qtr",values_to="return")

library(gapminder)
view(diamonds)                                                                           

library(tidyverse)
view(mpg)                                     
ggplot(mpg,aes(displ,hwy))+geom_point(aes(color=class))+geom_smooth(method="lm")

ggplot(gapminder,mapping=aes(gdpPercap,lifeExp)) + geom_smooth(f)

ggplot(mpg)+geom_point(mapping=aes(displ,hwy, color= factor(class))) + geom_smooth(mapping=aes(displ,hwy)) 

ggplot(gapminder,mapping=aes(gdpPercap,lifeExp)) + geom_point(color="class")
ggplot(gapminder,mapping=aes(gdpPercap,lifeExp,color=continent),alpha=0)+geom_point()+geom_smooth()+scale_x_log10()
