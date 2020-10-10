##Loading library 
library(ggplot2)
library(dplyr)

##Loading the data
SSCC <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##Checking data
str(SSCC)
head(SSCC)
str(SCC)
head(SCC)

## 1.Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
totalSSCC <- aggregate(Emissions ~ year, SSCC, sum)
plot(totalSSCC$year, totalSSCC$Emissions, type = "o", col = "steelblue3", main = expression("Total US "~ PM[2.5]~ "Emissions by Year"), ylab = expression("Total US "~   PM[2.5] ~ "Emissions"), xlab = "Year")

##Plot image
dev.copy(png,"plot1.png")
dev.off()