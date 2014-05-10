source("load-data.R")

df <- loadPowerData()

yLimit <- range(c(as.numeric(as.character(df$Sub_metering_1)),
                  as.numeric(as.character(df$Sub_metering_2)),
                  as.numeric(as.character(df$Sub_metering_3))))

png(filename="plot3.png", width = 480, height = 480)

with(df, plot(DateTime, as.numeric(as.character(Sub_metering_1)),
              type = "l",
              xlab = "",
              ylab = "Energy sub metering",                
              ylim = yLimit))

with(df, lines(DateTime, as.numeric(as.character(Sub_metering_2)), col = "red", ylim = yLimit))
with(df, lines(DateTime, as.numeric(as.character(Sub_metering_3)), col = "blue", ylim = yLimit))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1,
       col = c("black", "red", "blue"))

dev.off()
