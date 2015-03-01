best <- function(state, outcome) {
    ## Read outcome data
    ## Check that state and outcome are valid
    ## Return hospital name in that state with lowest 30-day death
    ##


    idString = switch(outcome,
        "heart attack" = 11,
        "heart failure" = 17,
        "pneumonia" = 23,
        "failed"
                      )


    if(idString == "failed"){
        stop("invalid outcome")
    }

    
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")



    stateData <- data[data["State"] == state, ] 

    if (nrow(stateData) == 0){
        stop("invalid state")
    }


    relevantData <- stateData[c(idString, 2)]

	# numeric
    relevantData[, 1] <- as.numeric(relevantData[, 1])

	relevantData <- relevantData[ 	!is.na(relevantData[, 1]) , ]

	minimum <- min(relevantData[, 1] )

	relevantData <- relevantData[ 	minimum == relevantData[, 1]   , ]
	min(relevantData[, 2])

}


# best("TX", "heart attack")
# best("TX", "heart failure")
# best("MD", "heart attack")
# best("MD", "pneumonia")
# best("NY", "hert attack")
# best("BB", "heart attack")