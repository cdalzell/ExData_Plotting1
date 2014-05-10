source("load-data.R")

df <- loadPowerData()

yLimit <- range(c(as.numeric(as.character(df$Sub_metering_1)),
                  as.numeric(as.character(df$Sub_metering_2)),
                  as.numeric(as.character(df$Sub_metering_3))))

png(filename="plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

with(df, {
  # plot 2
  plot(DateTime, as.numeric(as.character(Global_active_power)), type= "l",
       xlab = "", ylab = "Global Active Power")
  
  # this is a new graph, related to voltage
  plot(DateTime, as.numeric(as.character(Voltage)), type = "l", xlab = "datetime", ylab = "Voltage")
  
  # plot 3
  plot(DateTime, as.numeric(as.character(Sub_metering_1)), type = "l",
       xlab = "", ylab = "Energy sub metering",                
       ylim = yLimit)
  
  lines(DateTime, as.numeric(as.character(Sub_metering_2)), col = "red", ylim = yLimit)
  lines(DateTime, as.numeric(as.character(Sub_metering_3)), col = "blue", ylim = yLimit)
  
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         bty = "n", lty = 1, col = c("black", "red", "blue"))
  
  # another new graph, this one related to Global_reactive_power
  plot(DateTime, as.numeric(as.character(Global_reactive_power)), type = "l",
       xlab = "datetime", ylab = "Global_reactive_power")
})

dev.off()
