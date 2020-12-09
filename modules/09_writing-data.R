library(gapminder)

#Create a subset of the dataframe
americas <- gapminder[gapminder$continent ==  "Americas", ]

#Define the plot and save it to a variable
lifeExp_plot <- ggplot(data = americas, mapping = aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

#show the plot
lifeExp_plot

#save the last plot to a pdf
ggsave("./results/My_most_recent_plot.pdf")

#Define the device for the plot to be a pdf file
pdf("./results/Life_Exp_vs_time.pdf", width = 12, height = 4)

#define the plot and save it to a variable
p1 <- ggplot(data = gapminder, aes(x = year, y = lifeExp, colour = country)) +
  geom_line() +
  theme(legend.position = "none")

#Save the plot to the pdf
p1 

#Defined a second plot
p2 <- p1 + facet_grid(. ~continent)

#Save the second plot to a second page in the pdf file
p2

#close the pdf file
dev.off()



#Writing data frames from R
aust_subset <- gapminder[gapminder$country == "Australia", ]

#Write a csv file
write.table(aust_subset, file = "./results/gapminder-aus.csv", sep = ',')

#Revome the quotes and row names
write.table(aust_subset, file = "./results/gapminder-aus.csv", sep = ',',
            quote = FALSE, 
            row.names = FALSE)

#subset for all data points collected since 1990
since_1990_subset <- gapminder[gapminder$year > 1990, ]

write.table(since_1990_subset, 
            file = "./results/gapminder-after1990.cvs", 
            sep = ",",
            quote = FALSE,
            row.names = FALSE)
