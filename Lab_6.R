                             ###### Завдання 1#######
###MTCARS##

for (i in 1:11){
  print(colnames(mtcars[i]))    #Показати назву стовбця
  if (shapiro.test(mtcars[,i])$p.value > 0.05){
      print(shapiro.test(mtcars[,i]))
      print(" Оскільки p > 0.05 - відповідає нормальному розподілу")  }
  
  else {print(shapiro.test(mtcars[,i]))
      print(" Оскільки p < 0.05 - НЕ відповідає нормальному розподілу")}
        }
# Тільки "qsec""wt""mpg" відповідають норм розподілу
###iris
                             
for (i in 1:4){
  print(colnames(iris[i]))
  if (shapiro.test(iris[,i])$p.value > 0.05){
    print(shapiro.test(iris[,i]))
    print(" Оскільки p > 0.05 - відповідає нормальному розподілу")  }
  
  else {print(shapiro.test(iris[,i]))
    print(" Оскільки p < 0.05 - НЕ відповідає нормальному розподілу")}
}
# Тільки "Sepal.Width" відповідає норм розподілу

                ####### Завдання 2 ########
                             
#Гіпотеза H0 - вибірки відповідають одному закону розподілу
# Aльтернативна гіпотеза H1, x y не відносяться до одного розподілу
                             
norm1=rnorm(200, 10, sqrt(2*10))
norm2=rnorm(200, 15, sqrt(2*15))
norm3=rnorm(200, 20, sqrt(2*20))
norm4=rnorm(200, 25, sqrt(2*25))
norm5=rnorm(200, 30, sqrt(2*30))
chi1=rchisq(100,10)
chi2=rchisq(100,15)
chi3=rchisq(100,20)
chi4=rchisq(100,25)
chi5=rchisq(100,30)

                            
ks.test(norm1, chi1) 
ks.test(norm2, chi2)
ks.test(norm3, chi3)
ks.test(norm4, chi4)
ks.test(norm5, chi1)

                ###### Завдання 3 ########
# H0: колір очей не залежить (якщо р>0,05), альтернативна гіпотеза H1: залежать 
female=HairEyeColor[, ,"Female"] # HairEyeColor[Hair, Eye, F or M]
female
chisq.test(female, simulate.p.value = T) 
#відхиляється гіпотеза н0, приймається Н1, що колір волосся залежить від кольору очей
                             
               ###### Завдання 4 ########                           
                             
data1 = read.table("read.txt", header = TRUE)                             

DRA = data1$Score[data1$LearningType == "DRA"]
SC = data1$Score[data1$LearningType == "SC"]
DRA;SC

t.test(DRA,SC) #альтернатива two.sided - по замовчуванню. р=0,027
#Альтернатива, що середнє для DRA менше, ніж для SC
t.test(DRA,SC, alternative = "less") # p=0,987
#Альтернатива, що середнє для DRA більше, ніж для SC
t.test(DRA,SC, alternative = "greater") # p=0,013

t.test(data1$Score ~ data1$LearningType)# ~ тобто зв'язок між
