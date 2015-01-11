#Read Power Data and extract subset of chosen days
powerdata = read.table("household_power_consumption.txt", sep= ";", header = TRUE)
powerdata2 <- subset(powerdata, powerdata$Date == "1/2/2007" | powerdata$Date == "2/2/2007")
# Create numeric vector of Global Active Power
pdp1 <- as.numeric(as.character(powerdata2$Global_active_power))

# Create histogram
hist(pdp1,  col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")