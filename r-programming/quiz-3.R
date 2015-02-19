#!/usr/bin/Rscript

print("Question 1")
virginicas <- iris[iris$Species == "virginica", ]
colMeans(virginicas["Sepal.Length"])

print("Question 2")
apply(iris[, 1:4], 2, mean)

print("Question 3")
sapply(split(mtcars$mpg, mtcars$cyl), mean)

print("Question 4")
x <- sapply(split(mtcars$hp, mtcars$cyl), mean)
abs(x["4"] - x["8"])

print("Question 5")
debug(ls)
ls
