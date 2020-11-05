# Instructor notes for Data Structures

## Agenda

* [Data Structures](http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1/index.html)
    * George (15 - 20 min) - Overview through Vectors and Type Coercion.
    * Randy (20 - 25 min) - Data Frames through Matrices
* Break at 11:50 - 12:10
* [Exploring Data Frames](http://swcarpentry.github.io/r-novice-gapminder/05-data-structures-part2/index.html)
    * Amy (20 min) - Entire module

Times listed are for teaching time, only. This leaves time for a 20 minute break and about 40 minutes, total, for the remainder of the session. Plan to use this time to stop at each challenge question to discuss and take questions. If we have time leftover at the end, we can open up the floor for additional questions.

## Data Structures Challenge Notes

We've created the `data/feline-data.csv` file in case any of the students need it.

### Challenge 2 (Poll)

Depending on your version of R, there may or may not be a factor in your copy of `cats`. Is there a factor in your `cats` data.frame? what is its name? Try using `?read.csv` to figure out how to switch between reading in strings as factors or character vectors; then write a command or two such that strings are read in as factor or character vectors.

Poll: What is the data type of `cats$coat` on your computer?

* Factor
* Character


### Challenge 5 (Poll)

Make another matrix, this time containing the numbers 1:50, with 5 columns and 10 rows.

Poll: Which solution did you use?

* `matrix(1:50, nrow = 10)`
* `matrix(1:50, ncol = 5)`
* `matrix(1:50, nrow = 10, ncol = 5)`
* Something else

Did the `matrix` function fill your matrix by column, or by row, as its default behavior? See if you can figure out how to change this. (hint: read the documentation for `matrix`!)


### Challenge 7 (Poll)

Consider the R output of the matrix below:

```
     [,1] [,2]
[1,]    4    1
[2,]    9    5
[3,]   10    7
```

Poll: What was the command that generated this matrix?

* `matrix(c(4, 1, 9, 5, 10, 7), nrow = 3)`
* `matrix(c(4, 9, 10, 1, 5, 7), ncol = 2, byrow = TRUE)`
* `matrix(c(4, 9, 10, 1, 5, 7), nrow = 2)`
* `matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE)`

Were you correct? What matrices do the other solutions generate?
