#class notes 20181205

jpeg("myplot.jpeg", width = 10, height = 3)  #tell R you want to make a pdf, and (optionally) tell it what size you want the canvas to be
  plot(mpg~hp, data = mtcars)             # Then make the plot
dev.off()                                 #then tell R you are done writing the plot 

library(here)
here()

setwd(here("Analysis"))

setwd("/Users/rpk")
getwd()
here()
