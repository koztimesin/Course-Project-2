## 4.Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?
SCCcoal <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
SSCCcoal <- SSCC[SSCC$SCC %in% SCCcoal$SCC,]
totalCoal <- aggregate(Emissions ~ year + type, SSCCcoal, sum)

ggplot(totalCoal, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Total US" ~ PM[2.5] ~ "Coal Emission by Type and Year")) +
  xlab("Year") +
  ylab(expression("US " ~ PM[2.5] ~ "Coal Emission")) +
  scale_colour_discrete(name = "Type of sources") +
  theme(legend.title = element_text(face = "bold"))

## Plot image
dev.copy(png,"plot4.png")
dev.off()