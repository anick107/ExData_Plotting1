## Change working directory
path <- "d:/courses/coursera/Exploratory Data Analysis/Project 1/ExData_Plotting1/figure/"
setwd(path)

## read complete file
filename <- "household_power_consumption.txt"
complete_dataset <- read.csv(filename, sep = ";", na.strings = "?")

## get only specific dates
dataset <- subset(complete_dataset, (Date=="1/2/2007")| (Date=="2/2/2007"))

## update format
dataset$Datetime <- strptime(paste(dataset$Date, dataset$Time), format = "%d/%m/%Y %H:%M:%S")
