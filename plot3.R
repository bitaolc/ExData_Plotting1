library(pryr)
setwd("E:/Folder/Coursera/R/Exploratory Data Analysis/Week1")

#download data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (file.exists("dataset.zip") == F){
download.file(url, "dataset.zip", method = "auto")}
unzip("dataset.zip")

#read data
hpc_raw <- read.table("household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F)

#check dim and data frame size
dim(hpc_raw) 
object_size(hpc_raw)

#clean and format dataset
hpc <- hpc_raw[which(hpc_raw$Date %in% c("1/2/2007","2/2/2007")),]
hpc[] <- lapply(hpc, function(x) gsub("\\?", NA, x)) #replace hpc with NA

#plot3
png("plot3.png", width=480, height=480)
plot(hpc$Day, as.numeric(hpc$Sub_metering_1), type = "s", xlab = "", ylab = "Energy sub metering")
lines(hpc$Day, as.numeric(hpc$Sub_metering_2), type = "s", col="red", xlab = "", ylab = "Energy sub metering")
lines(hpc$Day, as.numeric(hpc$Sub_metering_3), type = "s", col="blue", xlab = "", ylab = "Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty=1)
dev.off()
