1. Створити змінні базових (atomic) типів. Базові типи: character, numeric,
integer, complex, logical.
2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
2.71, 0, 13; 100 значень TRUE.
3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind
або rbind
0.5 1.3 3.5
3.9 131 2.8
0 2.2 4.6
2 7 5.1
4. Створити довільний список (list), в який включити всі базові типи.
5. Створити фактор з трьома рівнями «baby», «child», «adult».
6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA,
11. Знайти кількість значень NA.
7. Створити довільний data frame та вивести в консоль.
8. Змінити імена стовпців цього data frame.


Результат виконання:
> #1_1  
> v1_character<-"RStudio"  
> class(v1_character)  
[1] "character"  
> v2_numeric<--11.6  
> class(v2_numeric)  
[1] "numeric"  
> v3_integer<-3L  
> class(v3_integer)  
[1] "integer"  
> v4_complex<-2+2i  
> class(v4_complex)  
[1] "complex"  
> v5_logical<-TRUE  
> class(v5_logical)  
[1] "logical"  
> #1_2  
> vec_1<-5:75  
> vec_2_one_class<-c(3.14,2.71,0,13)  
> vec_2_diff_class<-list(3.14,2.72,0,13)  
> vec_3<-1:100!=0  
> vec_3_2<-rep(TRUE, 100)  
> #1_3  
> #matrix  
> m<-list(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1)  
> dim(m)<-c(4,3)  
> #cbind  
> x<-list(0.5,3.9,0,2)  
> y<-list(1.3,131,2.2,7)  
> z<-list(3.5,2.8,4.6,5.1)  
> cbind(x,y,z)  
     x   y   z  
[1,] 0.5 1.3 3.5  
[2,] 3.9 131 2.8  
[3,] 0   2.2 4.6  
[4,] 2   7   5.1  
> #rbind  
> x<-list(0.5,1.3,3.5)  
> y<-list(3.9,131,2.8)  
> z<-list(0,2.2,4.6)  
> t<-list(2,7,5.1)  
> rbind(x,y,z,t)  
  [,1] [,2] [,3]  
x 0.5  1.3  3.5  
y 3.9  131  2.8  
z 0    2.2  4.6  
t 2    7    5.1  
> #1_4  
> List<-list("RStudio",-11.6,3L,-2+2i,TRUE)  
> #1_5  
> text<-c("baby","baby","child","child","child","adult")  
> factor_text<-factor(text,levels=c("baby","child","adult"))  
> factor_text[1]  
[1] baby  
Levels: baby child adult  
> #1_6  
> x<-c(1,2,3,4,NA,6,7,NA,9,NA,11)  
> min(which(is.na(x)))  
[1] 5  
> length(which(is.na(x)))  
[1] 3  
> #1_7  
> employee<-c('John Doe','Peter Gynn','Jolie Hope')  
> salary<-c(21000, 23400, 26800)  
> startdate<-as.Date(c('2010-11-1','2008-3-25','2007-3-14'))  
> employ.data <- data.frame(employee, salary, startdate)  
> str(employ.data)  
'data.frame':	3 obs. of  3 variables:  
 $ employee : Factor w/ 3 levels "John Doe","Jolie Hope",..: 1 3 2  
 $ salary   : num  21000 23400 26800  
 $ startdate: Date, format: "2010-11-01" "2008-03-25" "2007-03-14"  
> #1_8  
> names(employ.data)<- c("Name2","Surname2","Gender2")  
> str(employ.data)  
'data.frame':	3 obs. of  3 variables:  
 $ Name2   : Factor w/ 3 levels "John Doe","Jolie Hope",..: 1 3 2  
 $ Surname2: num  21000 23400 26800  
 $ Gender2 : Date, format: "2010-11-01" "2008-03-25" "2007-03-14"  
