corr <- function(directory, threshold = 0) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files

    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0

    ## Return a numeric vector of correlations

    ans <- c()

    for(sensor in 1:332) {
        data = read.csv(sprintf("%s/%03d.csv", directory, sensor))
        good <- complete.cases(data)

        if (sum(good) <= threshold){
            next
        }

        gooddata <- data[good, ]
        ans <- c(ans,cor(gooddata["sulfate"], gooddata["nitrate"]))

    }

    ans
}

cr <- corr("specdata", 150)
head(cr)
summary(cr)
cr <- corr("specdata", 400)
head(cr)
summary(cr)
cr <- corr("specdata", 5000)
summary(cr)
length(cr)
cr <- corr("specdata")
summary(cr)
length(cr)
