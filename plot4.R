
DataFileName <- "household_power_consumption.txt"
Loadeddata <- read.table(DataFileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
RequiredDataSet <- Loadeddata[Loadeddata$Date %in% c("1/2/2007","2/2/2007") ,]

GlobalActivePowerData <- as.numeric(RequiredDataSet$Global_active_power)
DateTimeData <- strptime(paste(RequiredDataSet$Date, RequiredDataSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
SubMeteringData1 <- as.numeric(RequiredDataSet$Sub_metering_1)
SubMeteringData2 <- as.numeric(RequiredDataSet$Sub_metering_2)
SubMeteringData3 <- as.numeric(RequiredDataSet$Sub_metering_3)
GlobalReactivePowerData <- as.numeric(subSetData$Global_reactive_power)
VoltageData <- as.numeric(subSetData$Voltage)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(DateTimeData, GlobalActivePowerData, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(DateTimeData, VoltageData, type="l", xlab="datetime", ylab="Voltage")
plot(DateTimeData, SubMeteringData1, type="l", ylab="Energy sub metering", xlab="")
lines(DateTimeData, SubMeteringData2, type="l", col="red")
lines(DateTimeData, SubMeteringData3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(DateTimeData, GlobalReactivePowerData, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()





