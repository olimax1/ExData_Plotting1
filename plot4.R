data<-read.table('household_power_consumption.txt',sep=";",header=TRUE,stringsAsFactors=TRUE)

data_day_1<-subset(data,data$Date=='1/2/2007')
data_day_2<-subset(data,data$Date=='2/2/2007')
data_cleaned<-rbind(data_day_1,data_day_2)
x<-as.numeric(as.character(data_cleaned$Sub_metering_1))
y<-as.numeric(as.character(data_cleaned$Sub_metering_2))
z<-as.numeric(as.character(data_cleaned$Sub_metering_3))

png(file='plot4.png')
par(mfrow=c(2,2))
plot(as.numeric(as.character(data_cleaned$Global_active_power)),type='o',pch='.',axes=FALSE,xlab='',ylab='Global Active Power (kilowatts)')
axis(1,at=c(50,1450,2880),labels=c('Thu','Fri','Sat'))
axis(2)

plot(as.numeric(as.character(data_cleaned$Voltage)),type='o',pch='.',axes=FALSE,xlab='datetime',ylab='Voltage')
axis(1,at=c(50,1450,2880),labels=c('Thu','Fri','Sat'))
axis(2)

plot(x,type='n',axes=FALSE,xlab='',ylab='Energy sub metering')
legend(x=2400,y=40,pch='__', col=c('black','red','blue'), legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),cex=.30)
lines(x)
lines(y,col='red')
lines(z,col='blue')

plot(as.numeric(as.character(data_cleaned$Global_reactive_power)),type='o',pch='.',axes=FALSE,xlab='datetime',ylab='Global_reactive_power')
axis(1,at=c(50,1450,2880),labels=c('Thu','Fri','Sat'))
axis(2)

dev.off()