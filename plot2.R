#Read Power Data and extract subset of chosen days
powerdata = read.table("household_power_consumption.txt", sep= ";", header = TRUE)
powerdata2 <- subset(powerdata, powerdata$Date == "1/2/2007" | powerdata$Date == "2/2/2007")
# Create numeric vector of Global Active Power
pdp2 <- as.numeric(as.character(powerdata2$Global_active_power))

# Paste Date and Time Columns and convert to Poxixct format
pddt <-as.POSIXct(paste(powerdata2$Date, powerdata2$Time), format = "%d/%m/%Y %H:%M:%S")
# Plot
plot(pddt, pdp2, pch = "", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(pddt, pdp2, pch = "", xlab = "", ylab = "Global Active Power (kilowatts)")