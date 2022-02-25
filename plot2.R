df <- read.csv2("./week1/subsetted.csv")
df$datetime <- as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")

png(file="./week1/plot2.png", width=480, height=480)
plot(df$datetime, as.numeric(df$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
