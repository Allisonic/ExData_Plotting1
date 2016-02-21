setwd("C:\\Users\\SZXP0196\\Desktop\\Rdata")
consumptionraw<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE, dec=".")
consumption<-consumptionraw[consumptionraw$Date=="1/2/2007"|consumptionraw$Date=="2/2/2007",]
consumption$Global_active_power<-as.numeric(consumption$Global_active_power)
consumption$datetime<-strptime(paste(consumption$Date, consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(consumption$datetime,as.numeric(consumption$Sub_metering_1),main = "",ylab="Energy Sub Metering",xlab="",type="l",col="black")
lines(consumption$datetime,as.numeric(consumption$Sub_metering_2),col="red")
lines(consumption$datetime,as.numeric(consumption$Sub_metering_3),col="blue")
legend("topright",cex=0.7, lty = 1, col = c(1,2,4), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png,file="Plot 3.png",width=480,height=480)
dev.off()

