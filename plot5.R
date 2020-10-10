## 5.How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?
baltimoreMotor <- subset(SSCC, SSCC$fips == "24510" & SSCC$type == "ON-ROAD")
baltimoreMotorAGG <- aggregate(Emissions ~ year, baltimoreMotor, sum)

ggplot(baltimoreMotorAGG, aes(year, Emissions)) +
  geom_line(col = "steelblue3") +
  geom_point(col = "steelblue3") +
  ggtitle(expression("Baltimore " ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  xlab("Year") +
  ylab(expression(~PM[2.5]~ "Motor Vehicle Emissions"))

## Plot image
dev.copy(png,"plot5.png")
dev.off()