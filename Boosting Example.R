## Boosting Example
## Пример градиентного бустинга

library(ISLR); library(caret); library(ggplot2); library(gbm); data(Wage)
Wage <- subset(Wage, select = -c(logwage))
inTrain <- createDataPartition(y = Wage$wage, p = .7, list = F)
training <- Wage[inTrain, ]
testing <- Wage[-inTrain, ]

model <- train(wage ~ ., data = training, method = 'gbm', verbose = F)

qplot(predict(model, testing), wage, data = testing)
