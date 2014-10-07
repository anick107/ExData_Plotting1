# Include code for reading the data
source("reader.R")

png("plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(dataset$Datetime, dataset$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()