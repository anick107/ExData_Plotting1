source("reader.R")

png("plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
with(dataset, plot(Datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(dataset, lines(Datetime, Sub_metering_1, col = "black"))
with(dataset, lines(Datetime, Sub_metering_2, col = "red"))
with(dataset, lines(Datetime, Sub_metering_3, col = "blue"))
legend("topright", lwd=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()