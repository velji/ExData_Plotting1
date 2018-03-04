data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")

data2 <- na.omit(data)

dataplt1 <- data2[which(data2$Date == "1/2/2007" | data2$Date == "2/2/2007"),]

plt1 <- as.numeric(as.character(dataplt1$Global_active_power))

hist(plt1,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")