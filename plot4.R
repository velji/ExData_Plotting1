data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")

data2 <- na.omit(data)

dataplt1 <- data2[which(data2$Date == "1/2/2007" | data2$Date == "2/2/2007"),]

plt1 <- as.numeric(as.character(dataplt1$Global_active_power))

par(mfrow = c(2, 2), mar = c(4,4,2,1))

plot(as.POSIXct(paste(dataplt1$Date,dataplt1$Time), format = "%d/%m/%Y %H:%M:%S"),
     as.numeric(as.character(dataplt1$Global_active_power)),
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)"
)

plot(as.POSIXct(paste(dataplt1$Date,dataplt1$Time), format = "%d/%m/%Y %H:%M:%S"),
     as.numeric(as.character(dataplt1$Voltage)),
     type = "l",
     xlab = "datetime",
     ylab = "Voltage"
)

plot(as.POSIXct(paste(dataplt1$Date,dataplt1$Time), format = "%d/%m/%Y %H:%M:%S"),
     as.numeric(as.character(dataplt1$Sub_metering_1)), type = "l", ylab = "Energy sub metering", xlab = "" )


lines(as.POSIXct(paste(dataplt1$Date,dataplt1$Time), format = "%d/%m/%Y %H:%M:%S"),
      as.numeric(as.character(dataplt1$Sub_metering_2)), col = "red", lty = 2)

lines(as.POSIXct(paste(dataplt1$Date,dataplt1$Time), format = "%d/%m/%Y %H:%M:%S"),
      as.numeric(as.character(dataplt1$Sub_metering_3)), col = "blue", lty = 3)

legend("topright", pch = "______", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


plot(as.POSIXct(paste(dataplt1$Date,dataplt1$Time), format = "%d/%m/%Y %H:%M:%S"),
     as.numeric(as.character(dataplt1$Global_reactive_power)),
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power"
)