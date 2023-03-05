x1<-49*16
x2<-(1792-823)/(17)
x3<-exp(3)-(2*sin(5))
x4<-sqrt(19)^3

v1<-c(x1,x2,x3,x4)
sum(v1)
v2<-4*v1

m<-matrix(v1,2,2,TRUE)

1:5 #1 to 5
24:16 #24 to 16
seq(10,20,2) #from 10 to 20 with step
seq(10,0,-1) #from 10 to 0 
rep(3,7) #repeat 3 7 times
rep(7,3) # repeat 7 3 times
v2[c(F,F,T,F)]   #third element in v2
v2[3]
m[2,1]
statptn <-read.table("C:/Users/karel/Desktop/ugent/Statistiek-II-(Project)/statptn.txt")
names(statptn)<-c("oefen", "project", "oefenex", "theorex","totaal")
statptn$oefen
dim(statptn)


sum(statptn$oefen) #number of students to excercises
table(statptn$oefen)
barplot(statptn$oefen)

boxplot(statptn$theorex) #er zijn outliers
hist(statptn$theorex)
qqnorm(statptn$theorex)
qqline(statptn$theorex)

mean(statptn$theorex, na.rm=TRUE)
median(statptn$theorex, na.rm=TRUE)
sd(statptn$theorex,na.rm=TRUE)
IQR(statptn$theorex,na.rm=TRUE)
min(statptn$theorex,na.rm=TRUE)
max(statptn$theorex,na.rm=TRUE)

x<-statptn$totaal
ex12<-ifelse(x>=12,1,0)
sum(ex12,na.rm=TRUE)


boxplot(ifelse(statptn$oefen==1,statptn$totaal,NA),ifelse(statptn$oefen!=1,statptn$totaal,NA))
#grotere spreiding, lagere algemene resultaten

les<-ifelse(statptn$oefen==1,statptn$totaal,NA)
nietLes<-ifelse(statptn$oefen!=1,statptn$totaal,NA)

s1<-ifelse(les>12,les,NA)
s2<-ifelse(nietLes>12,nietLes,NA)
proportions(s1)
proportions(s2)


plot(statptn$totaal~statptn$oefen) #als er geen cor zou zijn dan zouden ze ongeveer evenveel gespreidt zijn
?cor
cor(statptn$project,statptn$theorex,use = "complete.obs")

install.packages("ggplot2")
library("ggplot2")
ggplot(statptn, mapping=aes(x=theorex, y= project, size=totaal, col=oefenex))+
  geom_point()
install.packages("readxl")
library(readxl)
Corona1 <- read_excel("COVID19BE.xlsx", sheet = 1)
Corona1$DATE<-as.Date(Corona1$DATE)
View(Corona1)
sum(Corona1$CASES[1:17],na.rm=TRUE)
sum(Corona1$CASES,na.rm=TRUE)
sum(ifelse(Corona1$AGEGROUP>=20 & Corona1$AGEGROUP<=29,Corona1$CASES,NA),na.rm=TRUE)

sum(ifelse(Corona1$AGEGROUP>=50 & Corona1$AGEGROUP<=59 & Corona1$SEX=="M" & (Corona1$PROVINCE=="WestVlaanderen" |Corona1$PROVINCE=="OostVlaanderen"),Corona1$CASES,NA),na.rm=TRUE)


data1<-aggregate(CASES~DATE~PROVINCE,data=Corona1, sum)
plot(data1)
aggregate(CASES~PROVINCE,data=Corona1,sum)

ggplot(Corona1, mapping=aes(x=DATE, y= CASES,colour=PROVINCE))+
  geom_line()

ggplot(Corona1, mapping=aes(x=DATE, y= CASES,colour=AGEGROUP))+
  geom_line()
