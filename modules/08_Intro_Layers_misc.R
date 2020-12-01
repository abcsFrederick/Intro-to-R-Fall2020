# Randy's code

library(gapminder)
data(gapminder)

# starting with ggplot2
library(ggplot2)


# our first figure
ggplot(data = gapminder, mapping = aes(gdpPercap, lifeExp)) +
    geom_point()

# modify our first figure such that year is on the x-axis
ggplot(data = gapminder, mapping = aes(year, lifeExp)) +
    geom_point()

# color by continent
ggplot(gapminder, aes(year, lifeExp, color = continent)) +
    geom_point()

## Layers ##

# update figure to show lines
ggplot(gapminder, aes(year, lifeExp, by = country, color = continent)) +
    geom_line()

# we can layer lines on top of points
ggplot(gapminder, aes(year, lifeExp, by = country, color = continent)) +
    geom_line() +
    geom_point()

# don't color the points
ggplot(gapminder, aes(year, lifeExp, by = country)) +
    geom_line(mapping = aes(color = continent)) +
    geom_point()

# swap line and point layers
ggplot(gapminder, aes(year, lifeExp, by = country)) +
    geom_point() +
    geom_line(mapping = aes(color = continent))
    

# changing default theme
library(cowplot)

theme_set(theme_half_open())

# example of figure from above using theme_half_open from cowplot package
ggplot(gapminder, aes(year, lifeExp, by = country)) +
    geom_point() +
    geom_line(mapping = aes(color = continent))

# relationship between population and gdpPercap
# for colorblind simulation: https://michelf.ca/projects/sim-daltonism/
ggplot(gapminder, aes(pop, gdpPercap, color = continent)) +
    geom_point() +
    scale_x_log10() +
    scale_y_log10() +
    scale_color_manual(values = c('black', 'gold', 'forestgreen', 'blue', 'orange'))

# highlight costa rica
gapminder$costarica <- gapminder$country == 'Costa Rica'
gapminder <- gapminder[order(gapminder$costarica),] # sort so that costa rica plots last

ggplot(gapminder, aes(pop, gdpPercap, color = costarica)) +
    geom_point() +
    scale_x_log10() +
    scale_y_log10() +
    scale_color_manual(values = c('black', 'gold', 'forestgreen', 'blue', 'orange'))

# brief intro to patchwork
library(patchwork)

# one figure from above
p1 <- ggplot(gapminder, aes(pop, gdpPercap, color = costarica)) +
    geom_point() +
    scale_x_log10() +
    scale_y_log10() +
    scale_color_manual(values = c('black', 'gold', 'forestgreen', 'blue', 'orange')) +
    theme(legend.position = "none")

# another figure from above
p2 <- ggplot(gapminder, aes(pop, gdpPercap, color = continent)) +
    geom_point() +
    scale_x_log10() +
    scale_y_log10() +
    scale_color_manual(values = c('black', 'gold', 'forestgreen', 'blue', 'orange'))

# put p1 and p2 together in a single figure
p1 + p2 + plot_annotation(caption = "This will explain my nice figure")
