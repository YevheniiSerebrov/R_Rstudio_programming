x1=rnorm(100, mean=50,sd=10)
x1=as.integer(x1)
x1                                #сформовано вектор 10 випадкових чисел 

minx1=min(x1)                     #мінімальне
minx1
maxx1=max(x1)                     #максимальне
maxx1

range(x1)                         #і максим і мінім

match(c(minx1,maxx1),x1)          #номер індекса
which(x1==max(x1))

geomean=prod(x1)^(1/length(x1))   #сер геом
geomean
median(x1)#медіана

#table показує частоту кожного значення
names(table(x1))[table(x1)==max(table(x1))] #мода
table(x1)

XI=x1[x1<40 | x1>60]              #новий вектор де х1 < 40 і > 60
XI
M1=matrix(x1, nrow=10, ncol=10, byrow=TRUE)          #заповнення по рядках
M1
M2=matrix(x1, nrow=10, ncol=10)                      #заповнення по стовбцях
M2




y6=matrix(c(92,85,79,85,79,69,92,80,90,90,75,90,75,65,90,82,82,92,82,79,85,81,75,87,94,76,93,65,65,87,98,54,65,87,86,98,76,87,65,54,65,76,77,87,76,75,87,97,65,54,56,67,78,98,89),nrow=11)
rownames(y6)=c("Гайовська","Гордей","Гончарук","Загородний","Мякотіна","Книш","Серебров","Стрільчук","Тодощук","Шевчук","Штипований")
colnames(y6)=c("Маркетинг","Менеджмент","Міжнародна", "Економіка праці", "Числові методи")
y6


A = matrix(c(0.2,  0.9, -1.1,  1.9,  7.4, -0.3, 
            -0.9,  0.2,  7.2,  1.9,   -2,  1.3, 
            -1.1,  2.3,  0.7, -0.4,  1.6,  8.8, 
              2,   5.7,  0.6,  0.1, -0.8, -1.3, 
             6.6,   0,  -2.1,  1.7,  1.6,   0, 
             -1,   1.2,  0.3,  6.9,  0.9, -1.7), nrow=6, ncol=6, byrow=TRUE)    
b = matrix(c(-5.94, 7.4, -6.04, -7.38, 15.74, 15.55), nrow=6, ncol=1, byrow=FALSE)
round(solve(A, b), 3)

############ Завдання 1 ####################
par(mfrow=c(3,2))
x=seq(-2*pi,2*pi,by=0.01)
y=tan(pi/2*x)
y1=sin(0.5*x)
y2=sin(x)*cos(2*x)
y3=cos(2*x)-sin(x)
y4=sin(x^2-1)
plot(x,y,type='l',lty=1,col='green',ylab='tg(pi/2*x)')
plot(x,y1,type='l',lty=5,col='red',ylab='sin(0.5x)',lwd=2)
plot(x,y2,type='l',lty=4,col='blue',ylab='sin(x)cos(2x)')
plot(x,y3,type='l',lty=2,col='orange',ylab='cos(2x)-sin(x)')
plot(x,y4,type='l',lty=3,col='brown',ylab='sin(x^2-1)')
############### Завдання 2 #################
library(datasets)
data(airquality)
airquality$Temp
hist(airquality$Temp,xlab='Temperature',border="white", 
     col="blue",breaks=20)

legend("topright", c("Частота Т"), fill=c("blue"))
############### Завдання 3 #################
library(datasets)
data(airquality)
airquality$Temp

dotchart(airquality$Temp,xlab='Temperature', 
     col="red",cex = 1.3,  pch = 2)
############### Завдання 4 #################
plot(1:20, type="n")
a1=c(1:16)
b1=c(18,12,15,13,16,11,9,7,10,13,6,3,1,4,2,0.5)
points(a1, b1,cex=2,pch=17,col = "red")
lines(a1,b1)

text("Title", line=1.5, font=3)
legend("topleft",pch=17,col = "red", legend="My triangles")

