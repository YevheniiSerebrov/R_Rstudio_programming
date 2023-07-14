
dat=rbinom(0:100,10,0.5); dat

#Інтервальний варіаційний ряд
cutt=cut(dat, breaks = c(0, 2, 4, 6, 8, 10),
    labels = c("[0,2]", "(2,4]", "(4,6]", "(6,8]","(8,10]"),
    include.lowest = T); cutt
table_1=table(cutt);table_1    #формуємо вектор частот

#Статистичні характеристи 
mean(dat)              #середнє
weighted.mean(dat)     #зважене середнє
sd(dat)                #квадратичне відхилення
var(dat)               #вибіркова дисперсія
summary(dat) 

par(mfrow=c(1,3))
barplot(table_1,col=heat.colors(6),ylim=c(0,50))
pie(table_1,edges = 50,radius=1,clockwise = T, col=rainbow(6))

Ef=ecdf(dat)
summary(Ef)
plot(Ef,verticals=T,col.points="blue",col.hor="red",col.vert="violet")
