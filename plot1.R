#read the data into R
household_power_consumption <- read.csv("~/R/exdata_data_household_power_consumption/household_power_consumption.txt", header=FALSE, sep=";")
#have a look at the top 6 rows of the dataset
head(household_power_consumption)
#give names to each column in the dataset
names(household_power_consumption) <- c("date","time","global_active_power","global_reactive_power","voltage","global_intensity","sub_metering_1","sub_metering_2","sub_metering_3")
#subset of the entire data
subdata <- subset(household_power_consumption, household_power_consumption$date == "1/2/2007" |  household_power_consumption$date == "2/2/2007")

#make first figure
hist(as.numeric(subdata$global_active_power), col = "red", main= "Global Active Power", xlab = "Global Active Power (kilowatts)")
#give the figure a title
title(main="Global Active Power")









