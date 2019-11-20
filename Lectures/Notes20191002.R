#notes 20191002

x <- c(1,5,7,2,8,10,3,8,5,4)

x[3]  #numeric indexing.  third element of vector x.

x > 5

which(x>5) #returns positions passing test 

x[x>5]  #returns values of x passing test.  logical subsetting, by true/false

x[c(3,5,6,8)] #numeric indexing


#indexing by column name

names(pirates)

pirates$height

pirates$headband

hist(pirates$height)

hist(pirates)

table(pirates$headband)


pirates[c(1:10), c(1:5)]



WorldPhones[,"Europe"]
WorldPhones["1951",]
WorldPhones[,]

Amers <- WorldPhones[ , c("N.Amer", "S.Amer", "Mid.Amer")]

(totals <- rowSums(Amers))

class(totals)
plot(totals)

years <- as.numeric(row.names(Amers))

plot(totals ~ years)
  abline(lm(totals~years), col = "red")
  
  
  getwd() #tell me where we are
  
  mydata <- read.table(file = '/Users/rpk/Desktop/mydata.txt',         # file is in my working directory
                       sep = '\t',                  # file is tab--delimited
                       header = TRUE)               # the first row of the data is a header row
                       
  write.table(ChickWeight,                        #write a table consisting of the dataframe "ChickWeight"
              file = "NewLocalFileCreated.txt",   #call the file this, and put it in the working directory
              quote = FALSE,                      #do not put quotes around the values in the dataframe
              sep = "\t",                         #use tabs to separate values, so it's tab-delimited
              row.names = FALSE,                  #do not include the row-names in the written file
              na = "NA") 
  
