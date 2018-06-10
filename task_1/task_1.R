#1_1
v1_character<-"RStudio"
class(v1_character)

v2_numeric<--11.6
class(v2_numeric)

v3_integer<-3L
class(v3_integer)

v4_complex<-2+2i
class(v4_complex)

v5_logical<-TRUE
class(v5_logical)

#1_2
vec_1<-5:75
vec_2_one_class<-c(3.14,2.71,0,13)
vec_2_diff_class<-list(3.14,2.72,0,13)
vec_3<-1:100!=0
vec_3_2<-rep(TRUE, 100)

#1_3
#matrix
m<-list(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1)
dim(m)<-c(4,3)

#cbind
x<-list(0.5,3.9,0,2)
y<-list(1.3,131,2.2,7)
z<-list(3.5,2.8,4.6,5.1)
cbind(x,y,z)

#rbind
x<-list(0.5,1.3,3.5)
y<-list(3.9,131,2.8)
z<-list(0,2.2,4.6)
t<-list(2,7,5.1)
rbind(x,y,z,t)

#1_4
List<-list("RStudio",-11.6,3L,-2+2i,TRUE)

#1_5
text<-c("baby","baby","child","child","child","adult")
factor_text<-factor(text,levels=c("baby","child","adult"))
factor_text[1]

#1_6
x<-c(1,2,3,4,NA,6,7,NA,9,NA,11)
min(which(is.na(x)))
length(which(is.na(x)))

#1_7
mydata<-read.csv('Score_lab1.csv')

#1_8
names(mydata)<- c("Name2","Surname2","Gender2","Faculty2","Subject_qty2","Score_avg2")