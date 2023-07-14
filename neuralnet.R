######## Ex. 1 ########
#install.packages("neuralnet")

######## Ex. 2 ########

# neuralnet(formula, data, hidden = 1, threshold = 0.01,
#           stepmax = 1e+05, rep = 1, startweights = NULL,
#           learningrate.limit = NULL, learningrate.factor = list(minus = 0.5,
#                                                                 plus = 1.2), learningrate = NULL, lifesign = "none",
#           lifesign.step = 1000, algorithm = "rprop+", err.fct = "sse",
#           act.fct = "logistic", linear.output = TRUE, exclude = NULL,
#           constant.weights = NULL, likelihood = FALSE)

######## Ex. 3 ########
x=c(1,2,6,8,9,10,11,12,14,16,17,18,20,22,23,24,25,27,29,30)
y=c(15,21,30,36,39,42,45,48,54,60,63,66,72,78,81,84,87,93,99,102)
x1=x[1:15]
y1=y[1:15]
d=cbind(x1,y1)


nn <- neuralnet(y1~x1, d, hidden=10, threshold=0.01)
plot(nn)
pred=predict(nn, data.frame(Var1 = x[16:20]))
pred=predict(nn, data.frame(Var1 = x[1:20]))

#Comparing table data and predicted by neuro
cbind(pred, y[16:20])

######## Ex. 4 ########
assess = read.table ( "assess.dat", header = T)
assess_train <- assess[1:14, ]
assess_test <- assess[14:18, ]

# prediction for T1[14:18]
nn1 <- neuralnet(T1 ~ T2 + T3 + T4 + T5 + T6 + T7 + T8, assess_train, hidden = 7)
pred <- predict(nn1, assess_test)
cbind(assess_test$T1, pred)
plot(nn1)
