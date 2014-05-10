loadPowerData <- function() {
  dataFrame <- read.csv2("data\\household_power_consumption.txt")
  
  dataFrame$DateTime <- strptime(paste(dataFrame$Date, dataFrame$Time), "%d/%m/%Y %H:%M:%S")

  dataFrame <- subset(dataFrame, select = -c(Date, Time))
  dataFrame <- subset(dataFrame, as.Date(DateTime) >= "2007-2-1" & as.Date(DateTime) < "2007-2-3")  
    
  return (dataFrame)
}
