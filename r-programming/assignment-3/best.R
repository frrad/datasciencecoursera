best <- function(state, outcome) {
    ## Read outcome data
    ## Check that state and outcome are valid
    ## Return hospital name in that state with lowest 30-day death
    ##


    idString = switch(outcome,
        "heart attack" = 11,
        "heart failure" = 2,
        "pneumonia" = 3,
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
    relevantData <- relevantData[ !is.na(as.numeric(relevantData[ , 1 ] )) , ]

    relevantData


}



best("AK", "heart attack")
