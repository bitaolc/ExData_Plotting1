library(pryr)
setwd("E:/Folder/Coursera/R/Exploratory Data Analysis/Week1")
#download data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (file.exists("dataset.zip") == F){
download.file(url, "dataset.zip", method = "auto")}
unzip("dataset.zip")

#read data
hpc_raw <- read.table("household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F)

#plot1
png("plot1.png", width=480, height=480)
hist(as.numeric(hpc$Global_active_power), xlab = "Global Active Power (kilowatts)", main = "Global Active Power",col = "red")
dev.off()
