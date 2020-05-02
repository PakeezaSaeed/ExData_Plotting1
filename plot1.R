
library(lubridate)
library(dplyr)
library(tidyverse)
library(stringr)
#Read the data into R 
data <- read.table(file = "household_power_consumption.txt", sep = ";", na.strings = '?', header = TRUE)

#Convert Dates
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

#Get the required data
datafeb1 <- data[grep("2007-02-01", data$Date),]
datafeb2 <- data[grep("2007-02-02", data$Date),]
reqdata <- rbind(datafeb1,datafeb2)

#Make a csv of the required data for future use
write.csv(reqdata, "reqdata.csv")

hist(reqdata$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()



