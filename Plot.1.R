setwd("C:\\Users\\SZXP0196\\Desktop\\Rdata")
consumptionraw<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE, dec=".")
consumption<-consumptionraw[consumptionraw$Date=="1/2/2007"|consumptionraw$Date=="2/2/2007",]
consumption$Global_active_power<-as.numeric(consumption$Global_active_power)
hist(consumption$Global_active_power,col="red",main = "Global Active Power",xlab="Global Active Power(kilowatt)")
dev.copy(png,file="Plot 1.png",width=480,height=480)
dev.off()