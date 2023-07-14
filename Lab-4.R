################# Завдання 1 ################# 
         ##### Дискретні #####
par(mfrow=c(2,2))
x_binom=rbinom(1:1000,50,0.5)#чим більша к-сть випроб, тим точніше, а чим більше Р, тим ближче буде до 50
hist(x_binom,col= heat.colors(10))

x_pois=rpois(50, 10)#розподіл 50 випроб, при середньому 10
hist(x_pois,col=cm.colors(10))

x_geom=rgeom(50,0.5)#показує к-сть невдач, при першому "успіху"
hist(x_geom,col=cm.colors(5))

x_hyper=rhyper(50,20,30,10)#к-сть  білих кульок з 10 спроб, якщо білих 20, а чорних 30
hist(x_hyper,col=rainbow(8))

        ##### Неперервні #####
par(mfrow=c(2,2)) 
x_norm=rnorm(50, 75)#50 чисел, середн 75
hist(x_norm,col=rainbow(8))

x_chi=rchisq(50,8,0)
hist(x_chi,col=rainbow(8))

x_fish=rf(50,2,50,1)
hist(x_fish,col=rainbow(8))

x_stud=rt(50,20,1)
hist(x_stud,col=rainbow(8))

################# Завдання 2 ################# 

par(mfrow=c(2,1))
ph=dhyper(0:6,6,14,6)

barplot(ph, xlab = "Витягнуто білих кульок з 6",ylab = "Імовірність", 
        names=(0:6), ylim=c(0,0.4),col=terrain.colors(6))

hist(ph,border="red", col="coral",breaks=10,labels = T)#показує частоту кожної імовірності
box()
################# Завдання 3 ################# 

x_geom=pgeom(0:45,0.1)#0.1 - імов, що студент "не відповість"
#hist(x_geom)
barplot(x_geom, xlab="К-сть додаткових питань",
ylab="Імовірність, що не відповість",ylim=c(0,1), names=(0:45),col=heat.colors(46, rev=1))

       
#Тобто, чим більше буде викладач давати питань, 
#тим вірогідність, що студент не відповість буде прямувати до 1

qgeom(0.95,0.1)#з імовірністю 95% к-сть дод питань буде 28 


