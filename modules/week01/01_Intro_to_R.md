Overview
--------

Follow along at [Introduction to R and
RStudio](http://swcarpentry.github.io/r-novice-gapminder/01-rstudio-intro/index.html).

-   Questions
    -   How to find your way around RStudio?
    -   How to interact with R?
    -   How to manage your environment?
    -   How to install packages?
-   Objectives
    -   Describe the purpose and use of each pane in the RStudio IDE
    -   Locate buttons and options in the RStudio IDE
    -   Define a variable
    -   Assign data to a variable
    -   Manage a workspace in an interactive R session
    -   Use mathematical and comparison operators
    -   Call functions
    -   Manage packages

Arithmetic
----------

Mathematical functions
----------------------

Comparing things
----------------

Variables and assignment
------------------------

### Challenge 1 solution (poll, multiple answers)

Which of the following are valid R variable names?

-   `min_height`
-   `max.height`
-   `_age`
-   `.mass`
-   `MaxLength`
-   `min-length`
-   `2widths`
-   `celsius2kelvin`

Vectorization
-------------

Managing your environment
-------------------------

R Packages
----------

Challenge Problems (breakout rooms)
-----------------------------------

### Challenge 2 solution

What will be the value of each variable after each statement in the
following code?

    # we wrap each statement in () to print the result *and* save it to a variable
    (mass <- 47.5)

    ## [1] 47.5

    (age <- 122)

    ## [1] 122

    (mass <- mass * 2.3)

    ## [1] 109.25

    (age <- age - 20)

    ## [1] 102

### Callenge 3 solution

Following up from the previous challenge, write a command to compare
mass to age. Is mass larger than age?

### Challenge 4 solution

Clean up your working environment by deleting the mass and age
variables.

### Challenge 5 solution

Install the following packages: `ggplot2`, `dplyr`, `gapminder`

    # We could do this in RStudio with Tools > Install Packages...
    # or we could install them from the command line as follows:
