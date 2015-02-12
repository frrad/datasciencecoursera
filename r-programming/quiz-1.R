#!/usr/bin/Rscript

print("Question 4")
x <- 4L
class(x)

print("Question 5")
x <- c(4, TRUE)
class(x)

print("Question 6")
x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x,y)

print("Question 8")
x <- list(2, "a", "b", TRUE)
x[[1]]

print("Question 9")
x <- 1:4
y <- 2:3
x + y

print("Question 10")
x <- c(3, 5, 1, 10, 12, 6)
x[x %in% 1:5] <- 0
x

data = read.csv("hw1_data.csv")

print("Question 11")
names(data)

print("Question 12")
head(data, n = 2)

print("Question 13")
nrow(data)

print("Question 14")
tail(data, n = 2)

print("Question 15")
data[47, "Ozone"]

print("Question 16")
good <- !is.na(data["Ozone"])
ozonedata <- data[good, ]
nrow(data) - nrow(ozonedata)

print("Question 17")
colMeans(ozonedata)["Ozone"]

print("Question 18")
good <- data["Ozone"] > 31 & data["Temp"] > 90 
range = data[good, ]
colMeans(range[!is.na(range["Solar.R"]), ] )["Solar.R"]

print("Question 19")
good <- data["Month"] == 6 & ! is.na( data["Temp"])
colMeans(data[good, ]["Temp"])

print("Question 20")
good <- data["Month"] == 5 & ! is.na( data["Ozone"])
max(data[good, ]["Ozone"])
