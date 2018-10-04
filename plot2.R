
DataFileName <- "household_power_consumption.txt"
Loadeddata <- read.table(DataFileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
RequiredDataSet <- Loadeddata[Loadeddata$Date %in% c("1/2/2007","2/2/2007") ,]

GlobalActivePowerData <- as.numeric(RequiredDataSet$Global_active_power)
DateTimeData <- strptime(paste(RequiredDataSet$Date, RequiredDataSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(DateTimeData, GlobalActivePowerData, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

