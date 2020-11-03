# Intro to R and RStudio
# follow along at http://swcarpentry.github.io/r-novice-gapminder/01-rstudio-intro/index.html

## Arithmetic

# calculator
1 + 100 # comment

3 + 5 * 2

# order of operations is important
(3 + 5) * 2

3 + (5 * 2)

# scientific notation
4 / 100000
4 / 1e5


## Mathematical functions

sin(1)

log(10)

log10(10)

exp(.5)


## Comparing things

# is 1 equal to 1?
1 == 1

# is 1 not equal to 2?
1 != 2
3 == 2

# is 1 less than 2?
1 < 2

# is 1 less than or equal to 2?
1 <= 2

# is 1 greater than -9?
1 >= -9


# is 1.1 equal to 1.1 + 1e-15 ("machine rounding error" added to the second number)
1.1 == 1.1 + 1e-15
all.equal(1.1, 1.1 + 1e-15)


## Variables and assignment

# create a variable
x <- 1/40

log(x)
log10(x)

# change x
x <- 100

# increment x by 1
x <- x + 1

# create a new variable with x
y <- x*3

# change x again
x <- x + 1

celsius2kelvin <- 1


## Vectorization

# create a vector from 1 to 5
x <- 1:5

# square x
x^2

# log of x
log(x)


## Managing your environment

# what is in my environment
ls()

# remove min_age
rm(y)

# is min_age still there?
ls()

# remove everything
rm(list = ls())


## R Packages

# load dplyr
library(dplyr)

# run the base version of intersect, not dplyr version
# base::intersect()

# install packages via Tools > Install packages..., or from the command line:
#install.packages('dplyr')


## Challenge Problems

### Challenge 2 solution

# What will be the value of each variable after each statement in the following code?

# we wrap each statement in () to print the result *and* save it to a variable
(mass <- 47.5)
(age <- 122)
(mass <- mass * 2.3)
(age <- age - 20)

### Callenge 3 solution

# Following up from the previous challenge, write a command to compare mass to age. Is mass larger than age?

mass > age

### Challenge 4 solution

# Clean up your working environment by deleting the mass and age variables.

rm(mass)
rm(age)
