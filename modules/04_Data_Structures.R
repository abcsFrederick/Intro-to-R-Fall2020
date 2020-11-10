# Module 4 - Data Structures

#########################
# Data Structures Intro #
#########################

# see http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1/index.html

# create and save cats data.frame
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

cats <- read.csv('data/feline-data.csv', stringsAsFactors = FALSE)

# look at the weight column of our cats data.frame
cats$weight

# add 2 to all weights in cats
cats$weight + 2

# paste characters together
paste("My cat is", cats$coat)

# can you add numbers and characters?
cats$weight + cats$coat # nope


##############
# data types #
##############

# these are "doubles", which means "real numbers" (i.e. not counting numbers)
typeof(cats$weight)

typeof(3.14)

# what if we want an integer? Add an "L" on the end of your number.
typeof(1L)

# complex number
typeof(1 + 1i)

# logical value
typeof(TRUE)

# character values

###############
# Data Frames #
###############

# lets look at our data.frame
typeof(cats$weight)
str(cats$weight)

str(cats$likes_string)

str(cats$coat)

str(cats)

# changing names
names(cats)[2]

names(cats)[2] <- 'wieght_kg'


###########
# Factors #
###########

coats <- c('tabby', 'tortoiseshell', 'tortoiseshell', 'black', 'tabby')

str(coats)

CATegories <- factor(coats)


#########
# Lists #
#########

list_example <- list(1, "a", TRUE, 1+4i, c(1,2,3,4,5))
str(list_example)

# this has no names
names(list_example)

another_list <- list(title = "Numbers", numbers = 1:10, data = TRUE, my_little_poly = "Fun")
str(another_list)

# what is in "title"?
another_list$title

# comparing cats with our list
typeof(cats)
class(cats)
str(cats)

typeof(another_list)
class(another_list)

# you can turn cats into a list
cats_lst <- as.list(cats)
str(cats_lst)


############
# indexing #
############

# I want the frst row and first column:
cats[1,1]

# there are always multiple ways to do thing in R
cats[,1]
cats$coat
str(cats[1])
str(cats[[1]])
str(cats["coat"])

typeof(cats[,1])

# grab the first row
cats[1,]


############
# matrices #
############

matrix_example <- matrix(0, ncol = 6, nrow = 3)

typeof(matrix_example)
class(matrix_example)

str(matrix_example)

# checking number of rows and columns
ncol(matrix_example)
nrow(matrix_example)

# index with [] similarly to data.frames
matrix_example[1,1]
matrix_example[,1]
matrix_example[1,]

# data type has to be the same for a matrix
mat_ex2 <- matrix(c(1,2,3,4,5,6,7,82,0), nrow = 3)
mat_ex3 <- matrix(c(1,2,3,4,5,6,7,82,'a'), nrow = 3)
       
typeof(mat_ex2)
typeof(mat_ex3)

# matricies can have missing data
mat_ex4 <- matrix(c(1,2,3,4,5,6,7,82,NA), nrow = 3)

mean(mat_ex4, na.rm = TRUE)
