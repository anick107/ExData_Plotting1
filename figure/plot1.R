# Include code for reading the data
source("reader.R")

png("plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
hist(dataset$Global_active_power, xlab="Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.off()