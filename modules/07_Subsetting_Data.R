# Subsetting Data

# a vector
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')

# get the first item from x
x[1]

# get the fourth item
x[4]

# get the first and forth items
x[c(1,4)]

# get the first through the fourth items
x[1:4]

# get the sixth item (returns missing)
x[6]

# get the 0th item (returns empty vector)
x[0]

# Skip elements #

# grab everything except 2nd value
x[-2]

# grab everything except the 2nd and 5th values
x[c(-2, -5)]

# R thinks you are trying to remove the second row and the fifth column and gets confused.
x[-2, -5]

# order of operations is important
x[-(1:3)]

# making changes stick
x <- x[-4]

## Challenge problem 1
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')

# solutions:
x[2:4]
x[c(2,3,4)]
x[c(-1,-5)]

# Subsetting by name #

# solution to challenge problem 1 with subset by name
x[c('b', 'c', 'd')]

# grab just the first value
x['a']

# Subset using logical vectors #

x[c(FALSE, TRUE, TRUE, TRUE, FALSE)]

# grab everything where x > 7
x[x > 7]

# grab everything where names of x = 'a'
x[names(x) == 'a']

# grab everything where x > 7 or x < 5
x[x > 7 | x < 5]

## Challenge problem 2
# list everthing where x > 4 and x < 7
x[x > 4 & x < 7]

# you can have non-unique names
y <- x
names(y) <- c('a', 'a', 'a', 'b', 'b')

y[names(y) == 'a']

# skipping named elements #

# this won't work
x[-'a']

# use this instead for names
x[names(x) != 'a']

# skipping multiple values with names - not quite what we want
x[names(x) != c('a', 'c')]

x[!names(x) %in% c('a', 'c')]

# keep only 'a' and 'c'
x[names(x) %in% c('a', 'c')]

# Special values #

# missing: NA
# Non-finite: Inf -Inf NaN

x <- c(x, NA, Inf, NaN)
names(x)[6:8] <- c('f', 'g', 'h')

# exclude missing values (NA, NaN)
x[!is.na(x)]

# exclude non-finite values (Inf, -Inf)
x[!is.infinite(x)]

# exclude using is.finite (Inf, -Inf, NA, NaN)
x[is.finite(x)]

# exclude NaNs
x[!is.nan(x)]

# using na.omit
z <- na.omit(x)
str(z)

# z is treated as a vector
z * 2

# matrix subsetting #

set.seed(1)
m <- matrix(rnorm(6*4), ncol=4, nrow=6)

# indexing a matrix - we want rows 3 and 4, and columns 3 and 1
m[3:4, c(3,1)]

# grab row 3, column 1
m[3,1]

# display all rows from columns 1 and 3
m[, c(1,3)]

# all values from row 3
m[3,]

# subsetting data.frames #

library(gapminder)
data(gapminder)

# grab the third "item" from gapminder - (year column)
head(gapminder[3])
head(gapminder[['year']])
head(gapminder$year)

# subset like we did matrices
gapminder[1:3,]
