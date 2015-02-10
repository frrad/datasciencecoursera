# Question 4
x <- 4L
class(x)

# Question 5
x <- c(4, TRUE)
class(x)

# Question 6
x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x,y)

# Question 8
x <- list(2, "a", "b", TRUE)
x[[1]]

# Question 9
x <- 1:4
y <- 2:3
x + y

# Question 10
x <- c(3, 5, 1, 10, 12, 6)
x[x %in% 1:5] <- 0
x

data = read.csv("hw1_data.csv")

# Question 11
names(data)

# Question 12
head(data, n = 2)

# Question 13
nrow(data)

# Question 14
tail(data, n = 2)

# Question 15
data[47, "Ozone"]