# TASK -1 , SPARKS FOUNDATION , NAME - SIFAT


# Import data
data <- read.csv("C:/Users/sifat/Desktop/data.csv")
data<- data.frame(data)
View(data)

#Normality
hist(data$Scores)

#linearity
plot(Scores ~ Hours, data)

#regression
relation <- lm(Scores ~ Hours, data)
print(relation)
print(summary(relation))

#Check for homoscedasticity

par(mfrow=c(2,2))
plot(relation)
par(mfrow=c(1,1))

# visualize the results
library(ggplot2)

graph<-ggplot(data, aes(x=Hours, y=Scores))+ geom_point()
graph

graph <- graph + geom_smooth(method="lm", col="black")
graph

# predict
a <- data.frame( Hours = 9.25)
result <-  predict(relation,a)
print(result)

#Plot
plot(y,x,col = "blue",main = "Hour and score Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "hour",ylab = "score")
