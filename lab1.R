data()
mtcars

cor(mtcars$mpg,mtcars$hp)
library(ggplot2)

ggplot(data=mtcars,aes(x=hp,y=mpg))+
         geom_point(shape=4,size=3,color="blue")+
         geom_smooth(method = "lm" ,se=FALSE)+
        labs(title="MPG vs HP",
             x="Horse Power",
             y="Milage per Galoon")+
  theme_minimal()
