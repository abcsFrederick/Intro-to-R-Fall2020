# continuing with data.frame manipulation with dplyr

library(gapminder)
data(gapminder)

library(dplyr)
library(ggplot2)
library(cowplot)

theme_set(theme_half_open())

# group_by and summarize

## let's start by looking at a grouped object
group_by(gapminder, continent) %>%
    str()

## let's pair this with summarize
gdpPerap_means <- gapminder %>%
    group_by(continent) %>%
    summarize(mean_gdpPercap = mean(gdpPercap))

## Challenge: Calculate the average life expectancy per country. 
#  Which has the longest average life expectancy and which has the shortest
#  average life expectancy?
lifeExp_means <- gapminder %>%
    group_by(country) %>%
    summarize(mean_lifeExp = mean(lifeExp))

## longest average lifeExp
filter(lifeExp_means, mean_lifeExp == max(mean_lifeExp))

## shortest average lifeExp
lifeExp_means[which.min(lifeExp_means$mean_lifeExp),]


# group by multiple columns
gdp_byContinent_byYear <- gapminder %>%
    group_by(continent, year) %>%
    summarize(mean_gdpPercap = mean(gdpPercap))

# additional summary functions: count() and n()
filter(gapminder, year == 2002) %>%
    count(continent, sort = TRUE)

## use n() to get the number of rows in each sub-group
group_by(gapminder, continent) %>%
    summarize(se_lifeExp = sd(lifeExp) / sqrt(n() - 1))

## calculate some summary statistics for the gapminder data
group_by(gapminder, continent) %>%
    summarize(mean_le = mean(lifeExp),
              min_le  = min(lifeExp),
              max_le  = max(lifeExp),
              se_le   = sd(lifeExp) / sqrt(n() - 1))


# mutate()

## add GDP to our data.frame
mutate(gapminder,
       gdp = gdpPercap * pop)

## combine mutate() with group_by()
group_by(gapminder, continent) %>%
    mutate(min_le = min(lifeExp))

## combine mutate() with ifelse()
gdp_pop_byContinent_byYear_above25 <- gapminder %>%
    mutate(gdp_billion = ifelse(lifeExp > 25, gdpPercap * pop / 10^9, NA)) %>%
    group_by(continent, year) %>%
    summarize(mean_gdpPercap = mean(gdpPercap, na.rm = TRUE),
              sd_gdpPercap = sd(gdpPercap, na.rm = TRUE),
              mean_pop = mean(pop, na.rm = TRUE),
              sd_pop = sd(pop, na.rm = TRUE),
              mean_gdp_billion = mean(gdp_billion, na.rm = TRUE),
              sd_gdp_billion = sd(gdp_billion, na.rm = TRUE))
    
                                
                                
# a few more graphics, piping data from filter()
filter(gapminder, continent == 'Americas') %>%
    ggplot(aes(lifeExp, pop, by = country)) +
    geom_point() +
    geom_line() +
    scale_y_log10()

filter(gapminder, continent == 'Americas') %>%
    ggplot(aes(lifeExp, pop, by = country)) +
    geom_line() +
    scale_y_log10() +
    facet_wrap( ~ country) +
    theme_half_open(font_size = 7)
