rankhospital <- function(state, outcome, num = "best") {
    ## Read outcome data
	## Check that state and outcome are valid
	## Return hospital name in that state with the given rank
	## 30-day death rate

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
	relevantData <- relevantData[order( relevantData[1] , relevantData[2]), ]


	if (num == "best"){
	    num = 1
	}
	if (num == "worst"){
	    num = nrow(relevantData)
	}

	relevantData[num, 2]
	


}



rankhospital("TX", "heart failure", 4)
rankhospital("MD", "heart attack", "worst")
rankhospital("MN", "heart attack", 5000)