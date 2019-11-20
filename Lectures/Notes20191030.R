#notes 20191030

plot(x = mpg$displ, y = mpg$hwy, col = as.factor(mpg$class))


ggplot(data = mpg, 
       aes(x = displ, y = hwy , color = class, shape = drv)
       ) +
  geom_point() 


baseinfo <- ggplot(data = mpg,   
                   aes(x = displ, y = hwy , color = class)
)  

baseinfo +
  geom_smooth(method = "lm", se = T) +
  geom_point()


#styler
  

baseinfo + 
  geom_point() +
  ggtitle("Some Car Stuff") + 
  labs(x = "Engine Displacement", y = "Highway Miles-per-Gallon") +
  annotate("text", x = 2, y = 40, label ="This is nice, no?", color = "white",
           family="Papyrus") +
  theme_dark() + #one of several pre-set themes;
  #you can change everything about the plot, such as the background color, which I'm doing here
  theme(plot.background = element_rect(fill = "lightgrey"),
        legend.background = element_rect(fill = "grey70"))

ggplot(mpg, aes(class, hwy, fill=class)) +
  geom_boxplot() 

ggplot(mpg, aes(x = hwy, fill=class)) +
  geom_histogram(binwidth = 5, position = "dodge2")  #Side-by-side histogram

ggplot(mpg, aes(x = hwy, fill=class)) +
  geom_histogram(binwidth = 5)  #stacked

ggplot(mpg, aes(x = hwy, fill=class)) +
  geom_density(alpha = .5) +
  scale_fill_manual(values=wes_palette(n=7, name="Zissou1", type = "continuous"))


ggplot(mpg, aes(hwy)) +
  geom_histogram(binwidth = 5) +
  facet_wrap("class")

ggplot(mpg, aes(hwy)) +
  geom_histogram(binwidth = 5) +
  facet_wrap(~class)

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap( ~ cyl + class)

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_grid(class ~ cyl)



