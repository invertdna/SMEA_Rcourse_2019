#notes 20191106

1 + 1

sum(c(1,2,3,4))  #function(argument)  verb(noun)


c(1:10)  %>%         #take a vector of numbers and send it down the line...
  sqrt() %>%         #take the square root of each number in the vector, and send it...
  keep(.< 3)  %>%    #keep only the values that are under 3, and send it...
  sum() -> newthing              #sum the resulting numbers)  
  

baby <- read.csv("../Data/NationalNames.csv") 
