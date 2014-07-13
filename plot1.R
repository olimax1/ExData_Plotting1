data<-read.table('household_power_consumption.txt',sep=";",header=TRUE,stringsAsFactors=TRUE)

data_day_1<-subset(data,data$Date=='1/2/2007')
data_day_2<-subset(data,data$Date=='2/2/2007')
data_cleaned<-rbind(data_day_1,data_day_2)

png(file='plot1.png')
hist(as.numeric(as.character(data_cleaned$Global_active_power)),xlab='Global active power (kilowatts)', ylab="Frequency", main='Global Active Power', col='red')
dev.off()
