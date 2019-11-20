#notes 20191009

#data()
CO2 <- CO2
head(CO2)
?CO2

plot(y = CO2$uptake,
     x = CO2$conc)

plot(uptake~conc, data = CO2)
plot(CO2$uptake~CO2$conc)
plot(CO2$conc, CO2$uptake)
?plot

plot(CO2$uptake~CO2$conc,
     type = "b")

plot(y = CO2$uptake,
     type = "b",
     x = CO2$conc
     )

plot(CO2$uptake,
     "b",
     CO2$conc
) #order matters if variables aren't specified explicitly.


