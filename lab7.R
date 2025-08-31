library(readr)

# Read the CSV
fishstory <- read_csv("C:/Users/hvhar/Downloads/fishstory.csv")
names(fishstory)

# Perform a paired t-test between 1970 and 1980 prices
t_test_result <- t.test(fishstory$`Price1980`, fishstory$`Price1970`, paired = TRUE)

# Print test result
print(t_test_result)

# Print mean difference
mean_diff <- mean(fishstory$`Price1980` - fishstory$`Price197e`, na.rm = TRUE)
cat("Mean difference in price (1980 - 1970):", mean_diff, "\n")

# Print confidence interval
cat("95% Confidence Interval:", t_test_result$conf.int, "\n")
