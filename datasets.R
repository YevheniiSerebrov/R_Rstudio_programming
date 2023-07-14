########### Завдання 1 ##############
x1 = runif(10, 1, 20) #10 випадкових дійних чисел від 1 до 20
x2 = sample(1:20, 10, replace=F)#10 випадкових цілих чисел 
x1
x2
sort(x1)
sort(x2)
order(x2)#відображає індекси елементів, що відсортованні

########### Завдання 2 ##############
library(datasets)
data(airquality)
airquality
airquality$Temp

i_search = function (a){
      for (i in 1:length(airquality$Temp)){
           if (airquality$Temp[i]== a){
               return(i)}}}

sapply(57,i_search) #значення в таблиці від 56 до 97

############ Завдання 3 ##############

    #функція агрегування дозволяє згрупувати Температуру по Month, де однакові значення 
    #і знайти середнє по кожному місяці
xx=aggregate( Temp ~ Month, airquality , mean)
xx
write.table(xx, file = "file3.csv")#створення файлу з даними в робочій директорії

############ Завдання 4 ##############

V=airquality$Wind[airquality$Solar.R > 100] #Формуємо вектор V швидкості повітря, за умови
mean(V, na.rm=T)

############ Завдання 5 ##############

maxx=max(airquality$Ozone,na.rm=T)#Знаходимо максимальне значення Озону
maxx
V1=airquality$Month[airquality$Ozone == maxx] #Виводимо місяць за умови
max(V1,na.rm=T)#використ ф-ція макс, щоб позбутися нульових значень
