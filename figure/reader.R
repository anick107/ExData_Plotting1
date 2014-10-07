# read the dataset just once in order to speed up the process
if (!exists("dataset")){
        ## Change working directory
        path <- "d:/courses/coursera/Exploratory Data Analysis/Project 1/ExData_Plotting1/figure/"
        setwd(path)
        
        ## original file
        fh <- file("household_power_consumption.txt", "r")
        
        ## find the lines with dates 1/2/2007 through 2/2/2007
        dataset_filename <- "household_power_consumption_2007Feb.txt"
        cat(grep("(^Date)|(^[1|2]/2/2007)",readLines(fh), value=TRUE), 
            sep = "\n", 
            file = dataset_filename)
        close(fh)
        
        ## read prepared csv file
        dataset <- read.csv(dataset_filename, 
                            sep = ";", 
                            na.strings = "?")
        
        ## update format
        dataset$Datetime <- strptime(paste(dataset$Date, dataset$Time), 
                                     format = "%d/%m/%Y %H:%M:%S")
}