df <- read.csv("baggagecomplaints.csv")
df <- df %>%
  mutate(Rate = 100 * Baggage/Enplaned )
print(summary(df[c("Baggage","Rate")]))

library(dplyr)
summary_airline = df %>%
  group_by(Airline) %>%
  summarize(
    total_months = n(),
    total_passangers = sum(Enplaned),
    mean_complaints = mean(Baggage),
    median_complaints = median(Baggage),
    sd_complaints = sd(Baggage),
    mean_rate = mean(Rate),
    median_rate = median(Rate),
    sd_rate = sd(Rate),
    min_rate = min(Rate),
    max_rate = max(Rate)
  )

print(summary_airline,n=Inf,width = Inf)

yearly_avg <- df%>%
  group_by(Year,Airline) %>%
  summarise(
    avg_complaints = mean(Baggage),
    .groups="drop"
  )

ggplot(yearly_avg, aes(x=Year,y=avg_complaints,color=Airline))+
  geom_line(linewidth=1.2)+
  geom_point(size=2,color="black")+
  theme_minimal()+
  labs(
    title="Yearly Avg Baggage Complaints",
    x="Year",
    y="Avg Complaints"
  )
