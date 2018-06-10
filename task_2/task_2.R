#2_1
v<-rnorm(100)
v[10]
v[10:20]
v[v>0]
head(v[20:length(v)],10)
v[10:29]


#2_2
y<-data.frame(a=rnorm(100),b=1:100,cc=sample(letters,100,replace=TRUE))
tail(y,10)
y[10:20,]
y[10,c("b")]
y[,c("cc")]
y

#2_3
vec<-c(1,2,3,NA,4,NA,5,NA)
mean(vec,na.rm=TRUE)
mean_1<-mean(vec[-which(is.na(vec))])
vec[which(is.na(vec))]<-0
mean_2<-mean(vec)
mean(vec)