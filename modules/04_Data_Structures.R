# Module 4 - Data Structures

#########################
# Data Structures Intro #
#########################

# see http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1/index.html

#Create a data frame from multiple vectors of the same length
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

#Retrieve a specific column in the data frame as a vector
cats$weight
cats$coat

#Run an operation on all elements of a vector
cats$weight + 2
paste("My cat is", cats$coat)

#That does not change the original vector
cats$coat

#Add two vectors of different types (not possible)
cats$weight + cats$coat


##############
# data types #
##############

#Types in R
typeof(cats$weight)
typeof(3.14)
typeof(1)
typeof(1L)
typeof(1+1i)
typeof(FALSE)

#After I edited one value in the weights to be "2.3 or 2.4", now 
#That column will be treated as factor instead of numeric.
cats_v2 <- read.csv(file = "./data/feline-data_v2.csv")
typeof(cats_v2$weight)

#I can't do arithmetic computations on factors
cats_v2$weight + 2
class(cats)
class(coat)


###########
# Vectors #
###########

#Create an empty vector of logical values (all defaul to to FALSE)
my_vector <- vector(length = 3)
my_vector

#Create an empty vector of characters or strings
chr_vector <- vector(mode = 'character', length = 3)
chr_vector

#Print metata data about the vectors (or any data structure) 
#using the str function
str(chr_vector)
str(cats$weight)

#All elements in a vector should be of the same type, if they are note
#then R coerce to the most common type
quiz_vector <- c(2, 6, '3')
str(quiz_vector)

#Numeric + Logical default to all numeric
coercion_vector <- c(0, TRUE)
str(coercion_vector)

#You can convert types using "as"
chr_vector_new <- c('0', '2', '4')
chr_to_numeric <- as.numeric(chr_vector_new)
str(chr_to_numeric)

#Convert numeric to logical (all numbers are TRUE except ZERO)
num_to_logical <- as.logical(chr_to_numeric)
str(num_to_logical)

#Concatinate vectors
combined_vector <- c(chr_vector_new, "new_string")
combined_vector

#Short form for a series
mySeries <- 1:10
mySeries

#Shoft form for a sequence
seq(1,10,by=0.2)
length(combined_vector)



my_examples <- 5:8
my_examples

#Every element in a vector can be assigned a name, in that case
#The left hand side of the assignment operation returns
#the variables that will be assigned names from the left hand side
names(my_examples) <- c("a", "b", "c", "d")
my_examples


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
