########### ex. 1 #############

#lm(formula, data, subset, weights, na.action,
#method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
#singular.ok = TRUE, contrasts = NULL, offset, ...)

#nls(formula, data, start, control, algorithm,
#    trace, subset, weights, na.action, model,
#    lower, upper, ...)

########### ex. 2 #############
#airmiles
years=c(1937:1960)
a1=lm(years~airmiles)
a1
cor(years,airmiles)# cor coeff = 0.95
summary(a1)

#freeny
a2=lm(y~lag.quarterly.revenue+price.index+income.level+market.potential, data=freeny)
a2
cor(freeny)
summary(a2)

#pressure
a3=lm(pressure$temperature~pressure$pressure)
a3
cor(pressure$temperature,pressure$pressure)# cor coeff = 0.76
summary(a3)

#uspop
dec_years=seq(1790,1970, by=10)
a4=lm(dec_years~uspop)
a4
cor(dec_years,uspop)# cor coeff = 0.96
summary(a4)

########### ex. 3 #############

x=c(1,2,6,8,9,10,11,12,14,16,17,18,20,22,23,24,25,27,29,30)
y=c(15,21,30,36,39,42,45,48,54,60,63,66,72,78,81,84,87,93,99,102)
lin=lm(x~y)
lin

plot(y,x, col="red")#we have linear regression
abline(a=-4.2385, b=0.3364, col="blaCK")
cor(x,y)
summary(lin)
#y=-4.2385+0.3364x
#model is reliable in general

