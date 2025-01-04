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