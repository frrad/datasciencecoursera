#!/usr/bin/Rscript

print("Question 1")
set.seed(1)
rpois(5, 2)

print("Question 2")
?rnorm

print("Question 4")
?qpois

print("Question 5")
set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e
y

print("Question 6")
?rbinom
