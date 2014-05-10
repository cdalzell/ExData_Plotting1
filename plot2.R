source("load-data.R")

df <- loadPowerData()

png(filename="plot2.png", width = 480, height = 480)

with(df, plot(DateTime, as.numeric(as.character(Global_active_power)),
              type="l",
              ylab="Global Active Power (kilowatts)",
              xlab=""))

dev.off()
