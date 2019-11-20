#notes 20191113

#Reshaping

miniData <- head(mtcars[,1:3])

t(miniData)
str(t(miniData))

str(miniData)


miniData %>% 
  rownames_to_column("Model") %>% 
  gather(key = "Measurement", value = "Value", -Model)

miniData %>% 
  rownames_to_column("Model") %>% 
  group_by(cyl) %>% 
  summarise(mean.mpg = mean(mpg),
            sd.mpg = sd(mpg))



Cars %>% 
  rownames_to_column("Model") %>%    #here, move rownames to a column and call that column `Model`
  gather(#gather takes a few arguments, none of them intuitive:
    key = "ThingMeasured",  #the `key` will be the column header containing the newly organized info
    value = "Value",
    -Model
  ) -> longCars

longCars %>% 
  ggplot(aes(x = Model, y = Value)) +
    geom_point() +
    facet_grid(~ThingMeasured) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))


#longCars[19,] <- c("Volvo240", "hp", NA)


longCars %>% 
  spread(key = "ThingMeasured",
         value = "Value",
         fill = NA) -> wideCars

str(wideCars)

longCars %>% 
  spread(key = "ThingMeasured",
         value = "Value",
         fill = 0) ->wide.with.0

str(wide.with.0)

wideCars %>% 
  summarise(mean(mpg, na.rm = T))

mtcars %>% 
  rownames_to_column("Model") %>%    #here, move rownames to a column and call that column `Model`
  gather(#gather takes a few arguments, none of them intuitive:
    key = "ThingMeasured",  #the `key` will be the column header containing the newly organized info
    value = "Value",
    -Model)



#binding

rbind(
  Cars[1:3,],
  Cars[4:6,]
)

fake_cars <- Cars[4:6, c(3,2,1)]

bind_rows(
  Cars[1:3,],
  fake_cars)


#match

v1 <- c(letters[1:10])

v2 <- c(letters[8:15])

match(v1, v2)
match(v2, v1)
v1%in%v2
v2%in%v1

v1
v2

v1[match(v2,v1)]
