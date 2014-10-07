#source("reader.R")
png("plot2.png", width = 480, height = 480, units = "px")
plot(dataset$Datetime, dataset$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()