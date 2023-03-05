
#based on Mario Castro's tutorial

#install.packages("GGally")
#install.packages("factoextra")
#install.packages("cluster")

library(GGally)
library(factoextra)
library(cluster)

data("USArrests")
head(USArrests)
summary(USArrests)

df<-data.frame(scale(USArrests))
summary(df)
sd(df$Murder) #mean 0 SD=1


km<-kmeans(df,centers = 2,nstart=25,trace=TRUE)
summary(km)

km$cluster
km$tot.withinss #error

sil<-silhouette(km$cluster,dist=dist(df))

fviz_silhouette(sil)


elbow <- c()
mean.sil<-c()
for(k in 2:10){
  km<-kmeans(df,centers=k,nstart=25)
  sil<-silhouette(km$cluster,dist=dist(df))
  elbow<-c(elbow,km$tot.withinss)
  mean.sil<-c(mean.sil,mean(sil[,3]))
}

elbow
mean.sil

plot(2:10,elbow,type='b',xlab='k') #k=4
plot(2:10,mean.sil,type='b',xlab='k') #k=2

km<-kmeans(df,centers=2,nstart=25)
#km<-kmeans(df,centers=4,nstart=25)

df$clusters<-as.factor(km$cluster)
fviz_cluster(km,data=df[-5]) #added column

df$clusters<-as.factor(km$cluster)
ggpairs(df,aes(col=clusters))













#simulatie 2
#clusteranalyse group 5
data(iris)
head(iris)

dm<-dist(iris[1:4])
dim(iris)
#virginica:3
#versicolor: 2
#setosa: 1
iris$Species[50:70]
species_check<-c("setosa", "versicolor", "virginica")

#plot(cs<-hclust(dm,"single"))
#plot(cc<-hclust(dm,"complete"))
plot(ca<-hclust(dm,"average"))

cut_avrg<-cutree(ca,k=3)
print(cut_avrg)

#clusters
iris$cluster<-cut_avrg
table(iris$Species,iris$cluster)

#species
iris$cluster<-species_check[cut_avrg]
table(iris$Species,iris$cluster)

err_rate<-mean(ifelse(iris$Species==species_check[cut_avrg], 1,0))
print(err_rate)














