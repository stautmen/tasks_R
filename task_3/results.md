1. Функція add2(x, y), яка повертає суму двох чисел.
2. Функція above(x, n), яка приймає вектор та число n, та повертає всі
елементі вектору, які більше n. По замовчуванню n = 10.
3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його
елементи за допомогою exp з n, та повертає елементи вектору, які
відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі
елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”.
Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
4. Функція columnmean(x, removeNA), яка розраховує середнє значення
(mean) по кожному стовпцю матриці, або data frame. Логічний параметр
removeNA вказує, чи видаляти NA значення. По замовчуванню він
дорівнює TRUE.


> **#3_1**  
> add2<-function(x,y){  
   x+y  
 }  
> add2(10,5)  
[1] 15  

> **#3_2**  
> above<-function(x,n=10){  
   x[x>n]  
 }  
> above(c(2,12,34,1,23))  
[1] 12 34 23  

> **#3_3**  
> myifelse<-function(x,exp,n){  
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

> **#3_4**  
> columnmean<-function(x,removeNA=T){  
   i<-1  
   while (i<=ncol(x)){  
     print(mean(x[,i],rm.na=removeNA))  
     i<-i+1  
   }}  
> data<-data.frame(col_1=1:5,col_2=rnorm(5))  
> columnmean(data)  
[1] 3  
[1] -0.7281215
