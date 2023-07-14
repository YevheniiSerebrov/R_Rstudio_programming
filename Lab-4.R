################# Çàâäàííÿ 1 ################# 
         ##### Äèñêðåòí³ #####
par(mfrow=c(2,2))
x_binom=rbinom(1:1000,50,0.5)#÷èì á³ëüøà ê-ñòü âèïðîá, òèì òî÷í³øå, à ÷èì á³ëüøå Ð, òèì áëèæ÷å áóäå äî 50
hist(x_binom,col= heat.colors(10))

x_pois=rpois(50, 10)#ðîçïîä³ë 50 âèïðîá, ïðè ñåðåäíüîìó 10
hist(x_pois,col=cm.colors(10))

x_geom=rgeom(50,0.5)#ïîêàçóº ê-ñòü íåâäà÷, ïðè ïåðøîìó "óñï³õó"
hist(x_geom,col=cm.colors(5))

x_hyper=rhyper(50,20,30,10)#ê-ñòü  á³ëèõ êóëüîê ç 10 ñïðîá, ÿêùî á³ëèõ 20, à ÷îðíèõ 30
hist(x_hyper,col=rainbow(8))

        ##### Íåïåðåðâí³ #####
par(mfrow=c(2,2)) 
x_norm=rnorm(50, 75)#50 ÷èñåë, ñåðåäí 75
hist(x_norm,col=rainbow(8))

x_chi=rchisq(50,8,0)
hist(x_chi,col=rainbow(8))

x_fish=rf(50,2,50,1)
hist(x_fish,col=rainbow(8))

x_stud=rt(50,20,1)
hist(x_stud,col=rainbow(8))

################# Çàâäàííÿ 2 ################# 

par(mfrow=c(2,1))
ph=dhyper(0:6,6,14,6)

barplot(ph, xlab = "Âèòÿãíóòî á³ëèõ êóëüîê ç 6",ylab = "²ìîâ³ðí³ñòü", 
        names=(0:6), ylim=c(0,0.4),col=terrain.colors(6))

hist(ph,border="red", col="coral",breaks=10,labels = T)#ïîêàçóº ÷àñòîòó êîæíî¿ ³ìîâ³ðíîñò³
box()
################# Çàâäàííÿ 3 ################# 

x_geom=pgeom(0:45,0.1)#0.1 - ³ìîâ, ùî ñòóäåíò "íå â³äïîâ³ñòü"
#hist(x_geom)
barplot(x_geom, xlab="Ê-ñòü äîäàòêîâèõ ïèòàíü",
ylab="²ìîâ³ðí³ñòü, ùî íå â³äïîâ³ñòü",ylim=c(0,1), names=(0:45),col=heat.colors(46, rev=1))

       
#Òîáòî, ÷èì á³ëüøå áóäå âèêëàäà÷ äàâàòè ïèòàíü, 
#òèì â³ðîã³äí³ñòü, ùî ñòóäåíò íå â³äïîâ³ñòü áóäå ïðÿìóâàòè äî 1

qgeom(0.95,0.1)#ç ³ìîâ³ðí³ñòþ 95% ê-ñòü äîä ïèòàíü áóäå 28 


