#notes for class 20190925

#here is another note
x <- c(1,4,5,8,4,7,8,0,4,5,7,2)  #here, we create vector called x, and fill it with numbers.  

class(x)

y <- c("A","B","C")

class(y)

z <- c(TRUE, FALSE)

class(z)

myvector <- c(1,2,3,4)


###Structures

#scalar
myanswer <- TRUE

#vectors
y <- c("A","B","C")

#dataframe

my.data.frame <- data.frame(
  col1 = runif(100, 1,10),
  col2 = runif(100, 1,10)
)

head(my.data.frame, 10)

#lists

f <- list(col1 = runif(100, 1,10),
          col2 = runif(100, 1,10))


###########
###########


hist(x, col = "grey")

###########
###########

#functions

#verb(noun)

sum(x)
mean(x)
sd(x)
summary(x)

x^2
sqrt(x)
x^(1/2)

"A"









