mtcars

mtcars$cyl <- as.factor(mtcars$cyl)

anova_result = aov(mpg~cyl, data=mtcars)
summary(anova_result)

wilcox.test(mpg~cyl,data=subset(mtcars,cyl %in% c(4,6)))

kruskal.test(mpg~cyl,data=mtcars)
