
#set.seed(1)
# n<-20000
# m<-matrix(nrow=20000,ncol=3)
# for(i in 1:20000){
#   myVec<-rnorm(10,10,2)
#   gemiddelde<-mean(myVec)
#   med<-median(myVec)
#   gemiddeldeTrim<-mean(myVec,0.2)
#   m[i,1]<-gemiddelde
#   m[i,2]<-med
#   m[i,3]<-gemiddeldeTrim
#   
#   
# }
# v1<-sum(m[,1])/20000
# v2<-sum(m[,2])/20000
# v3<-sum(m[,3])/20000
# 
# apply(m,2,mean)-10
# T<-(v1+v2+v3)/3
# colnames(m)<-c("gemmiddelde", "mediaan", "trim")
# v<-apply(m,2,var)
# print(v<-apply(m,2,sd))
# mse<-apply((m-10)^2,2,mean)
# v1<-sum(m[,1]^2)/20000
# v2<-sum(m[,2]^2)/20000
# v3<-sum(m[,3]^2)/20000
# (v)/(0.005^2)
# a=max((v)/(0.005^2))

















#set.seed(1)
n<-100
m<-matrix(nrow=n,ncol=3)
for(i in 1:n){
  
  myVec <- 10 + 2*rt(10,df=n-1)
  gemiddelde<-mean(myVec)
  med<-median(myVec)
  gemiddeldeTrim<-mean(myVec,0.2)
  m[i,1]<-gemiddelde
  m[i,2]<-med
  m[i,3]<-gemiddeldeTrim
  
  
}
v1<-sum(m[,1])/n
v2<-sum(m[,2])/n
v3<-sum(m[,3])/n

apply(m,2,mean)-10
T<-(v1+v2+v3)/3
colnames(m)<-c("gemmiddelde", "mediaan", "trim")
v<-apply(m,2,var)
print(v<-apply(m,2,sd))
mse<-apply((m-10)^2,2,mean)
v1<-sum(m[,1]^2)/n
v2<-sum(m[,2]^2)/n
v3<-sum(m[,3]^2)/n
(v)/(0.005^2)
a=max((v)/(0.005^2))





#set.seed(1)
n<-100
m<-matrix(nrow=n,ncol=3)
for(i in 1:n){
  
  myVec <- 10 + 2*rt(10,df=n-1)
  gemiddelde<-mean(myVec)
  med<-median(myVec)
  gemiddeldeTrim<-mean(myVec,0.2)
  m[i,1]<-gemiddelde
  m[i,2]<-med
  m[i,3]<-gemiddeldeTrim
  
  
}
v1<-sum(m[,1])/n
v2<-sum(m[,2])/n
v3<-sum(m[,3])/n

apply(m,2,mean)-10
T<-(v1+v2+v3)/3
colnames(m)<-c("gemmiddelde", "mediaan", "trim")
v<-apply(m,2,var)
print(v<-apply(m,2,sd))
mse<-apply((m-10)^2,2,mean)
v1<-sum(m[,1]^2)/n
v2<-sum(m[,2]^2)/n
v3<-sum(m[,3]^2)/n
(v)/(0.005^2)
a=max((v)/(0.005^2))

