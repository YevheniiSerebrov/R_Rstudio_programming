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
plot(x,y2,type='o',lty=4,col='blue',ylab='sin(x)cos(2x)')
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
dotchart(airquality$Temp, xlab='Temperature', ylab = 'Frequency',
     col="red",cex = 1.1,  pch = 2)
############### Завдання 4 #################
plot(1:20, type="n")
a1=c(1:16)
b1=c(18,12,15,13,16,11,9,7,10,13,6,3,1,4,2,0.5)
points(a1, b1,cex=2,pch=17,col = "red")
lines(a1,b1)

mtext("Title", line=1.5, font=3)
legend("topleft",pch=17,col = "red", legend="My triangles")


