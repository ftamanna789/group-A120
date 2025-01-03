library(readr)
energy<-read_csv("renewable_energy.csv")
df<-energy
filtered_df <- energy[energy$LOCATION%in% c('AUS', 'BEL'), ]
print(filtered_df)
wilcox_test_result <- wilcox.test(Value ~ LOCATION, data = filtered_df)

print(wilcox_test_result)

boxplot(Value ~ LOCATION, data = filtered_df, 
        main = "Boxplot of Production of Renewable Energy",
        xlab = "LOCATION",
        ylab = "Value of Renewable Energy Production",
        xlim=c(0,3),
        ylim=c(0,8400))
hist(filtered_df$Value, 
     main = "Histogram of Production of Renewable Energy",
     xlab = "Value of Renewable Energy Production",
     ylab = "Frequency",
     xlim=c(0,8000),
     ylim=c(0,0.00036),
     col = "blue",
     border = "red",
     
     probability = TRUE)
lines(density(filtered_df$Value), col = "black", lwd = 2)
