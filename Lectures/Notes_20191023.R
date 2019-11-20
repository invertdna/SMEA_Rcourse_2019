#notes for 20191023

results.vector <- c()                             #create an empty container in which to store results
for (i in 1:length(unique(myData$Month))){         #set up the loop; for each unique Month...
  x <- myData$AreaSampled[myData$Month == i]      #create a subset of AreaSampled in that Month...
  y <- myData$Barnacles[myData$Month == i]        #create a subset of Barnacles counted in that Month...
  results.vector[i] <- cor(x, y)
  #calculate a correlation with cor(), and store that value
}

results.vector


library(nycflights13)

n.flights <- with (flights, table(dest))
n.flights <- sort(desc(n.flights))
top10 <- names (n.flights)[1:10]


dep.airports <- unique(flights$origin)

top8 <- top10[-c(3,7)]

for (ori in dep.airports){
  for (dest in top8){
    
    temp <- flights$sched_dep_time[flights$origin == ori & flights$dest == dest]
    
    hist(temp,
         xlim = c (0,2400),
         main = paste0("From ", ori , " to ", dest))
  }
}

ori <- "EWR"
dest <- "ORD"

paste0("here is some", "text")

#####

test.df <-  replicate(10, rnorm(10, mean = 20)) # a matrix of 10 x 10

test.df <- as.data.frame(test.df) # Coerce it into a dataframe

# Doing things the hard way
for ( i in 1:ncol(test.df)){  # Loop over the columns
  for (j in 1:nrow(test.df)){ # Nested loop over rows
    test.df[j,i]<- 10*test.df[j,i]
    
  }
}

# Using built-in features in R

test.df <- 10 * test.df


####

Beach.comm <-  round(replicate(10, rnorm(5, mean = 20, sd = 4)),0) # A matrix of 10x5
Beach.comm <- as.data.frame(Beach.comm, row.names = paste("Beach", LETTERS[1:5])) # a dataframe, now with row names
colnames(Beach.comm) <- paste("Species", 1:10) # And also column names

apply(Beach.comm[,1:5], 
      MARGIN = 2, 
      FUN = summary)

myList<- lapply(1:5, print)

myList[[4]]

lapply(myData, mean)

MEANAREA <- function(x) mean(x$Area)

my.data.list <- split(x = myData, f = Continent)
lapply(my.data.list, 
       MEANAREA
       )


myData %>%                     #take my dataframe and...
  group_by(Continent) %>%      #group by Continent, and...
  summarize(MeanB = mean(Barnacles))  #calculate the mean number of barnacles on each continent
  




