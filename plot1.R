
DataFileName <- "household_power_consumption.txt"
Loadeddata <- read.table(DataFileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
RequiredDataSet <- Loadeddata[Loadeddata$Date %in% c("1/2/2007","2/2/2007") ,]

GlobalActivePowerData <- as.numeric(RequiredDataSet$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GlobalActivePowerData, col="Red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
