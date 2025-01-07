library(readr)
energy<-read_csv("renewable_energy.csv")
df<-energy
filtered_df <- energy[energy$LOCATION%in% c('AUS', 'BEL'), ]
print(filtered_df)
wilcox_test_result <- wilcox.test(Value ~ LOCATION, data = filtered_df)

print(wilcox_test_result)