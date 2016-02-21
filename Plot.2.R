setwd("C:\\Users\\SZXP0196\\Desktop\\Rdata")
consumptionraw<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE, dec=".")
consumption<-consumptionraw[consumptionraw$Date=="1/2/2007"|consumptionraw$Date=="2/2/2007",]
consumption$Global_active_power<-as.numeric(consumption$Global_active_power)
consumption$datetime<-strptime(paste(consumption$Date, consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(consumption$datetime,consumption$Global_active_power,main = "",ylab="Global Active Power(kilowatt)",xlab="",type="l")
dev.copy(png,file="Plot 2.png",width=480,height=480)
dev.off()

