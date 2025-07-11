df<-read.csv("C:/Users/hvhar/Downloads/treatmentfacility.csv")
df$Reengineer<-factor(df$Reengineer,levels=c("Prior","Post"))

#install.packages("dplyr")
library(dplyr)

summary_stats=df%>%
  group_by(Reengineer) %>%
    summarize(
      n=n(),
      mean_turnover = mean(Employee_Turnover),
      sd_turnover = sd(Employee_Turnover),
      mean_TRFF = mean(TRFF),
      sd_TRFF = sd(TRFF),
      mean_CI = mean(CI),
      sd_CI = sd(CI)
    )

print(summary_stats)

library(ggplot2)

ggplot(df,aes(x=Reengineer,y=Employee_Turnover,fill=Reengineer))+
  geom_boxplot()+
  labs(title = "Employee Turnover Before and Afterr Rengineering")

ggplot(df,aes(x=Reengineer,y=TRFF,fill=Reengineer))+
  geom_boxplot()+
  labs(title="TRFF Before and After Engineering")
