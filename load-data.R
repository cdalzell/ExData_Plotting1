loadPowerData <- function() {
  dataFrame <- read.csv2("data\\household_power_consumption.txt")
  
  dataFrame$Date <- strptime(dataFrame$Date, "%d/%m/%Y")
  dataFrame <- subset(dataFrame, as.Date(Date) >= '2007-2-1' & as.Date(Date) < '2007-2-3')
    
  return (dataFrame)
}