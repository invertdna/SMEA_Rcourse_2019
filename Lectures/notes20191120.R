#notes 20191120

str(t.test.results)
  t.test.results$statistic

  
cor.test.results <-  cor.test(diamonds$weight, diamonds$value)  
  str(cor.test.results)

  
cor(diamonds$weight, diamonds$value, method = "pearson")
cor(diamonds$weight, diamonds$value, method = "kendall")



lm.result <- lm(value~weight, data=diamonds)  #yvariable~xvariable is the formula
summary(lm.result)
str(lm.result)


lm.result$model$value


plot(lm.result)


plot (value~weight, data=diamonds,
      pch = 19, xlab = "Weight of Diamonds (grams)", ylab = "Value (Doubloons") #here, let's use filled-in dots and label the axes appropriately

#now we add the best-fit line from the linear model we saved above
abline(lm.result, 
       col = "purple", #we'll color it purple
       lwd = 2, #and make it thick (lwd, for "line width")
       lty = 2)   #dashed (lty = 2, for "line type")


diamonds %>% 
  ggplot(aes(x = weight, y = value)) +
    geom_point() +
    geom_smooth(method = "lm", se = F)



predict(lm.result, 
        newdata = data.frame(weight =c(10, 12 ,14)))


mult.lm.result <- lm(value ~ weight + clarity, data = diamonds)  
summary(mult.lm.result)


diamonds %>% 
  ggplot(aes(x = weight, y = value, color = clarity)) +
  geom_point()


predict(mult.lm.result, 
        newdata = data.frame(weight =c(10, 12 ,14),
                             clarity = c(1, 1.2, 1.3)))


anova.result <- aov(value ~ weight + clarity, data = diamonds)
summary(anova.result)

coefficients(anova.result) 


total.variance <- sum(as.data.frame(summary(anova.result)[[1]])[,2]) #sum up the sums of squares

#fraction of variance explained by each of the factors (akin to the Rsquared value of the lm):

SumSquares <- data.frame(
  factors = row.names(as.data.frame(summary(anova.result)[[1]])),
  Rsquared =as.data.frame(summary(anova.result)[[1]])[,2] / total.variance
)

sum(SumSquares[1:2, 2])  #the same Rsquared value we get from the multiple linear model





