reqdata <- reqdata %>% 
  mutate(DateTime = paste(Date,Time, sep = " "))
reqdata$DateTime<- as.POSIXct(reqdata$DateTime, format="%Y-%m-%d %H:%M:%S")

plot(reqdata$DateTime, reqdata$Global_active_power, type = 'l', 
     ylab = "Global Active Power", xlab = "")

dev.copy(png, file = "plot2.png")
dev.off()
