pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files

    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".

    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used

    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    pool = c()

    for(sensor in id) {
        data = read.csv(sprintf("%s/%03d.csv", directory, sensor))
        polluted = data[!is.na(data[pollutant]), pollutant]

        pool <- c(polluted, pool)
    }

    mean(pool)


}

## pollutantmean("specdata", "sulfate", 1:10)
## pollutantmean("specdata", "nitrate", 70:72)
## pollutantmean("specdata", "nitrate", 23)
