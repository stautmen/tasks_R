#5_1

pmean<-function(directory,pollutant,id=1:332){
  d<-directory
  setwd(paste0("C:/Users/Lena/Desktop/R_Lab/",d))
  i<-1
  file_out<-data.frame()
  while (i<=length(id)){
    if (id[i]<=9) file<-read.csv(paste0("00",id[i],".csv"))
    else if (id[i]<=99) file<-read.csv(paste0("0",id[i],".csv"))
    else file<-read.csv(paste0(id[i],".csv"))
    i<-i+1
    file_out<-rbind(file_out,file)
  }
  mean(file_out[(names(file_out)==pollutant)][,1],na.rm = T)
}
pmean("specdata","sulfate",1:10)

#5_2
completely<-function(directory,id=1:332){
  d<-directory
  setwd(paste0("C:/Users/Lena/Desktop/R_Lab/",d))
  i<-1
  file_out<-data.frame(id_col=NA,value=NA)
  while (i<=length(id)){
    if (id[i]<=9) file<-read.csv(paste0("00",id[i],".csv"))
    else if (id[i]<=99) file<-read.csv(paste0("0",id[i],".csv"))
    else file<-read.csv(paste0(id[i],".csv"))
    file_out[nrow(file_out)+1,]<-c(id[i],nrow(file[complete.cases(file),]))
    i<-i+1
  }
  file_out[complete.cases(file_out),]
}

completely("specdata",2:5)

#5_3
corr <- function(directory, threshold = 0) {
  d<-directory
  setwd(paste0("C:/Users/Lena/Desktop/R_Lab/",d))
  i<-1
  cr <- c() 
  while (i<=332){
    if (i<=9) file<-read.csv(paste0("00",i,".csv"))
    else if (i<=99) file<-read.csv(paste0("0",i,".csv"))
    else file<-read.csv(paste0(i,".csv"))
    file <- file[complete.cases(file),]
    if ( nrow(file) > threshold ) {
      cr <- c(cr, cor(file$sulfate, file$nitrate) ) 
    }
  }
  
  cr 
}
corr("specdata",200)