#3_1
add2<-function(x,y){
  x+y
  
}

#3_2
above<-function(x,n=10){
  x[x>n]
  
}
above(c(2,12,34,1,23))

#3_3
myifelse<-function(x,exp,n){
  if (exp==">") {
    if (length(x[x>n])==0){
      s<-x
    } else {
      s<-x[x>n]
    }
  }else if (exp=="<"){
    if (length(x[x<n])==0){
      s<-x
    } else {
      s<-x[x<n]
    }
  }else if (exp=="<="){
    if (length(x[x<=n])==0){
      s<-x
    } else {
      s<-x[x<=n]
    }
  }else if (exp==">="){
    if (length(x[x>=n])==0){
      s<-x
    } else {
      s<-x[x>=n]
    }
  }else if (exp=="=="){
    if (length(x[x==n])==0){
      s<-x
    } else {
      s<-x[x==n]
    }
  }
  
  return(s)
}




#3_4

columnmean<-function(x,removeNA=T){
i<-1
while (i<=ncol(df)){
  print(mean(x[,i],rm.na=removeNA))
  i<-i+1
}}
data<-data.frame(col_1=1:5,col_2=rnorm(5))
columnmean(data)