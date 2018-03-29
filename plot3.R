#plot3
png("plot3.png", width=480, height=480)
plot(hpc$Day, as.numeric(hpc$Sub_metering_1), type = "s", xlab = "", ylab = "Energy sub metering")
lines(hpc$Day, as.numeric(hpc$Sub_metering_2), type = "s", col="red", xlab = "", ylab = "Energy sub metering")
lines(hpc$Day, as.numeric(hpc$Sub_metering_3), type = "s", col="blue", xlab = "", ylab = "Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty=1)
dev.off()
