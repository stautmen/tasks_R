data<-read.csv('hw1_data.csv')

#4_1
names(data)

#4_2
head(data)

#4_3
nrow(data)

#4_4
tail(data,10)

#4_5
length(data$Ozone[is.na(data$Ozone)])

#4_6
mean(data$Ozone,na.rm = T)

#4_7
subset(data,Ozone>35&Temp>90)
mean(subset(data,Ozone>35&Temp>90)$Solar.R,na.rm=T)

#4_8
mean(subset(data,Month==6)$Temp,na.rm=T)

#4_9
max(subset(data,Month==5)$Ozone,na.rm=T)
set