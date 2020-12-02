library(gapminder)
data(gapminder)
library(ggplot2)
str(gapminder)


ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point(size=3, shape=17, , mapping = aes(color = continent)) + 
  scale_x_log10() +
  geom_smooth(method="lm", size=1.5)


# Create a subset of the data frame just for the "Americas"
americas <- gapminder[gapminder$continent ==  "Americas", ]

#The ggplot function sets the global options for the plot that will be applied
#to all layers. You can save these configuration in a variable.
my_plot <- ggplot(data = americas, mapping = aes(x = year, y = lifeExp))
# To actually see the plot, type the variable name in R Studio
my_plot
# Add layers to the plot variables
my_plot <- my_plot + geom_line()
my_plot
#Add teh facet_wrap layer
my_plot <- my_plot + facet_wrap(~country)
my_plot
# Configure the layout, title, axis names for the plot
plot <- my_plot + labs(
  x = "Year", 
  y = "Life expectancy",
  title = "Figure1",
  color = "Continent"
)
my_plot
#Adjust the theme of the plot.
my_plot <- my_plot + theme(axis.text.x = element_text(angle = 90, hjust = 1))
my_plot

# You can also define the global options and all layres in one statement
lifeExp_plot <- ggplot(data = americas, mapping = aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
lifeExp_plot

#Save the plot to a file. Make sure you have the directory "results" created first.
ggsave(filename = "results/fileExp.png", plot = class_plot, width = 24, heigh = 20, dpi = 300, units = "cm")

