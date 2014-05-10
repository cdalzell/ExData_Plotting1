source("load-data.R")

df <- loadPowerData()

png(filename="plot1.png", width = 480, height = 480)

hist(as.numeric(as.character(df$Global_active_power)),
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")

dev.off()
