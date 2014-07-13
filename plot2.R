data<-read.table('household_power_consumption.txt',sep=";",header=TRUE,stringsAsFactors=TRUE)

data_day_1<-subset(data,data$Date=='1/2/2007')
data_day_2<-subset(data,data$Date=='2/2/2007')
data_cleaned<-rbind(data_day_1,data_day_2)

png(file='plot2.png')
plot(as.numeric(as.character(data_cleaned$Global_active_power)),type='o',pch='.',axes=FALSE,xlab='',ylab='Global Active Power (kilowatts)')
axis(1,at=c(50,1450,2880),labels=c('Thu','Fri','Sat'))
axis(2)
dev.off()
