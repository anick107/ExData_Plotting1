#source("reader.R")
#png("plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))

# plot 1
plot(dataset$Datetime, dataset$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")

# plot 2
plot(dataset$Datetime, dataset$Voltage, type = "l", xlab = "datetime", ylab="Voltage")

# plot 3
with(dataset, plot(Datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(dataset, lines(Datetime, Sub_metering_1, col = "black"))
with(dataset, lines(Datetime, Sub_metering_2, col = "red"))
with(dataset, lines(Datetime, Sub_metering_3, col = "blue"))
legend("topright", lwd=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# plot 4
plot(dataset$Datetime, dataset$Global_reactive_power, type = "l")

#dev.off()