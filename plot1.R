df <- read.csv2("./week1/subsetted.csv")
df$datetime <- as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")

png(file="./week1/plot1.png", width=480, height=480)
hist(as.numeric(df$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts", col="red")
dev.off()