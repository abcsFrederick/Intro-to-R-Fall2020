#General construct
#  if(logical condition) {
#      Statments to execute if condition is TRUE
#  } else {
#      Statements to execute if condition is FALSE
#  } 


x <- 8 

if (x >= 10) {
  print(" X is greater than or equal 10")
} else {
  print("x is less than 10")
}

x <- 11

# We can nest if statments
if (x >= 10) {
  print(" X is greater than or equal 10")
} else if (x > 5) {
  print(" X is less than 10 and greater than 5")
} else {
  print("X is less than 5")
}

#The condition can be any value that is TRUE or FALSE
bool_result <- 4 == 3

if (bool_result) {
  "4 equals 3"
} else {
  "4 does not equal 3"
}

#All numbers are TRUE except 0 is FALSE
if (-1) {
  "True statement"
} else {
  "False statement"
}

# Find if there is any rows in gapminder that corresponds to a given year
library(gapminder)
year_to_inspect <- 2012
#The following return a vector of bollean values for every row
rows_year <- gapminder$year == year_to_inspect

#See if any of these boolean values is TRUE
exists <- TRUE %in% rows_year
#Or
exists <- any(rows_year)

if (exists) {
  paste("There are", year_to_inspect, "rows in the gapminder dataset")
}













