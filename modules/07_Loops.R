
#############
# for loops #
#############

## try not to use for loops as a general rule
## try not to use nested for loops if at all possible
for(i in 1:10)
{
    for(j in c('a', 'b', 'c', 'd', 'e', 'f'))
    {
        print(paste(i, j))
    }
}


# try a more complicated for loop and explore how long it takes to do the same thing in different ways
# Using for loops should be avoided whenever possible, especially nested for loops
# This will also give you a good working knowledge of for loops

## number of rows and columns
n = 50
m = 50

## this grows our output vector each iteration - very slow
slow_start <- Sys.time() # start the clock for this bit of code
out_slow <- c() # don't do this!! it is inefficient
for(i in 1:n)
{
    for(j in 1:m)
    {
        out_slow <- c(out_slow, paste(i, j))
    }
}
slow_end <- Sys.time() # stop the clock


# this uses an existing output matrix
faster_start <- Sys.time()
out_faster <- matrix(NA, nrow = n, ncol = m)
for(i in 1:n)
{
    for(j in 1:m)
    {
        out_faster[i,j] <- paste(i, j)
    }
}
faster_end <- Sys.time()

# vectorized code is fastest
fastest_start <- Sys.time()
out_fastest <- paste(rep(1:n, each = m), rep(1:m, times = n))
fastest_end <- Sys.time()

# compare how long it took to run each of these (spoiler: the variable names are a clue)
paste("The slow time is:", slow_end - slow_start)
paste("The faster time is:", faster_end - faster_start)
paste("The fastest time is:", fastest_end - fastest_start)


###############
# while loops #
###############

set.seed(234987) # setting the random seed will allow us to replicate the same results
z <- 1
n_loops <- 0

while(z > 0.1) # we will keep going until we draw a pseudo-random variable that is less than .1
{
    # count number of times we go through the loop
    n_loops <- n_loops + 1
    
    # draw a pseudo-random uniform variable
    z <- runif(1)
    print(z)
}

n_loops