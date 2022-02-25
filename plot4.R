df <- read.csv2("./week1/subsetted.csv")
df$datetime <- as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")

png(file="./week1/plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot(df$datetime, as.numeric(df$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(df$datetime, as.numeric(df$Voltage), type="l", xlab="datetime", ylab="Voltage")

plot(df$datetime, as.numeric(df$Sub_metering_1), type="n", xlab="", ylab="Energy sub metering")
lines(df$datetime, as.numeric(df$Sub_metering_1))
lines(df$datetime, as.numeric(df$Sub_metering_2), col="red")
lines(df$datetime, as.numeric(df$Sub_metering_3), col="blue")
legend("topright", legend=c("Sub_metering1", "Sub_metering2", "Sub_metering3"), col=c("black", "red", "blue"), lty=1, bty="n")

plot(df$datetime, as.numeric(df$Global_reactive_power), type="l", xlab="datetime")
dev.off()
