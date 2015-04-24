
nomoreg <- read.csv("data/MultipleLinearRegression.csv")

library(ggplot2)
qplot(Decibels,Average.Minimum.Frequency, data=nomoreg)

library(reshape2)
nomoregmelt <- melt(nomoreg, id.vars="Decibels", value.name="Average Frequency", variable.name="Frequency")
View(nomoregmelt)

ggplot(nomoregmelt, aes(x=Decibels, y=`Average Frequency`, colour=Frequency, shape=Frequency)) +
  geom_point()+
  geom_smooth(method=lm)

ggplot(nomoregmelt, aes(x=Decibels, y=`Average Frequency`, colour=Frequency)) +
  geom_point(shape=1)

ggplot(nomoregmelt, aes(x=Decibels, y=`Average Frequency`)) +
  geom_point(shape=1)

ggplot(nomoregmelt, aes(x=Decibels, y=value, colour=variable, shape=variable)) +
  geom_point()+
  geom_smooth(method=lm)

read.csv("~/week post break/Project Presentation/data/Rpresentationregression1.csv")

nomoreg <- read.csv("~/week post break/Project Presentation/data/Rpresentationregression1.csv")

read.csv("~/week post break/Project Presentation/data/MultipleLinearRegression.csv")

nomoreg1 <- read.csv("~/week post break/Project Presentation/data/MultipleLinearRegression.csv")
library(ggplot2)




plot(nomoreg1$Decibels,nomoreg1$Average.Maximum.Frequency,pch=19,ylim=c(1800,5000),
     xlab="Decibels", ylab="Average Frequency")
points(nomoreg1$Decibels,nomoreg1$Average.Minimum.Frequency,pch=22)
points(nomoreg1$Decibels,nomoreg1$Average.Peak.Frequency)
line1 <- lm(nomoreg1$Decibels~nomoreg1$Average.Maximum.Frequency)
abline(line1)

library(ggplot2)


