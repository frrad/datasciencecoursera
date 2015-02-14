#!/usr/bin/Rscript

print("Question 1")
cube <- function(x,n) {
    x^3
}
cube(3)

print("Question 2") 
x <- 1:10
if(x > 5) {
    x <- 0
}

print("Question 3")
f <- function(x) {
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}
z <- 10
f(3)
     
print("Question 4")
x <- 5
y <- if(x<3) {
    NA
} else {
    10
}
y
