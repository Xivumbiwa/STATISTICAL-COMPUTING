# ============================
# Setup
# ============================
library(ggplot2) 
data("airquality")
airqual_data<- airquality

# ============================
#  dropping missing values
# ============================
install.packages("tidyr")
library(tidyr)

cleaned_data <- drop_na(airquality)

mean(cleaned_data$Ozone)
sd(cleaned_data$Ozone)
min(cleaned_data$Ozone)
max(cleaned_data$Ozone)


mean(cleaned_data$Temp)
sd(cleaned_data$Temp)
min(cleaned_data$Temp)
max(cleaned_data$Temp)


data("cars")

Y <- cars$speed 