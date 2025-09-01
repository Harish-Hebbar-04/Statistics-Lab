patient = read.csv("C:/Users/hvhar/Downloads/patient-feedback.csv")
fitness = read.csv("C:/Users/hvhar/Downloads/CardioGoodFitness.csv")

patient
fitness

summary(patient)


fitness_cont <- fitness[c("Age", "Usage", "Fitness", "Income", "Miles")]
pairs(fitness_cont,main="ScatterPlot Matrix - Fitness Data")

cor_matrix <- cor(fitness_cont)
print(cor_matrix)

cor_values <- cor_matrix[upper.tri(cor_matrix)]

max_cor <- max(cor_values)
cat("highest correlation : ",max_cor)
which(cor_matrix == max_cor, arr.ind = TRUE)


min_cor <- min(cor_values)
cat("lowest correlation : ",min_cor)
which(cor_matrix == min_cor, arr.ind = TRUE)
