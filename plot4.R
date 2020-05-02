par(mfrow = c(2,2))
plot(reqdata$DateTime, reqdata$Global_active_power, type = 'l', 
     ylab = "Global Active Power", xlab = "")
plot(reqdata$DateTime, reqdata$Voltage, type = 'l', xlab = "datetime", ylab = "Voltage")

with(reqdata, plot(DateTime, Sub_metering_1, type = 'n', xlab = " ", ylab = "Energy Sub Metering"))
with(reqdata, points(DateTime, Sub_metering_1, col = "black", type = 'l', lwd = 1))
with(reqdata, points(DateTime, Sub_metering_2, col = "red", type = 'l', lwd = 1))
with(reqdata, points(DateTime, Sub_metering_3, col = "blue", type = 'l', lwd = 1))
legend("topright", lty = c(1,1,1) , col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(reqdata$DateTime, reqdata$Global_reactive_power, xlab = "datetime", ylab = "Global Reactive Power", type = 'l')       

dev.copy(png, file = "plot4.png")
dev.off()
