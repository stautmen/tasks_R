1. Написати функцію pmean, яка обчислює середнє значення (mean)
забруднення сульфатами або нітратами серед заданого переліка
моніторів. Ця функція приймає три аргументи: «directory», «pollutant»,
«id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення,
id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332.
Функція повинна ігнорувати NA значення.
2. Написати функцію complete, яка виводить кількість повних спостережень
(the number of completely observed cases) для кожного файлу. Функція
приймає два аргументи: «Directory» та «id» та повертає data frame, в
якому перший стовпчик – ім’я файлу, а другий – кількість повних
спостережень.
3. Написати функцію corr, яка приймає два аргументи: directory (папка, де
знаходяться файли спостережень) та threshold (порогове значення, за
замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та
нітратами для моніторів, кількість повних спостережень для яких більше
порогового значення. Функція повинна повернути вектор значень
кореляцій. Якщо ні один монітор не перевищує порогового значення,
функція повинна повернути numeric вектор довжиною 0. Для обчислення
кореляції між сульфатами та нітратами використовуйте вбудовану функцію 
«cor» з параметрами за замовчуванням.

> **#5_1**  
> pmean<-function(directory,pollutant,id=1:332){  
   d<-directory  
   setwd(paste0("D:\\univ\\tasks_R\\",d))  
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
> pmean("specdata","sulfate",1:10)  
[1] 4.064128  

> **#5_2**  
> completely<-function(directory,id=1:332){  
   d<-directory  
   setwd(paste0("D:\\univ\\tasks_R\\",d))  
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
> completely("specdata",2:5)  
  id_col value  
2      2  1041  
3      3   243  
4      4   474  
5      5   402  

> **#5_3**  
> corr<-function(directory, threshold = 0) {  
   d<-directory  
   setwd(paste0("D:\\univ\\tasks_R\\",d))  
   i<-1  
   cr <- c()   
   while (i<=10){  
     if (i<=9) file<-read.csv(paste0("00",i,".csv"))  
     else if (i<=99) file<-read.csv(paste0("0",i,".csv"))  
     else file<-read.csv(paste0(i,".csv"))  
     file <- file[complete.cases(file),]  
     if ( nrow(file) > threshold ) {  
       print(file$nitrate) #cr <- c(cr, cor(file$sulfate, file$nitrate) )   
     }  
   }  
   cr  
 }  
> corr("specdata", 100)