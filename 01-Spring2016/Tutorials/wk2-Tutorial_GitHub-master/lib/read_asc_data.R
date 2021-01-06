### Read in ACS data

colsToKeep <- c("PINCP", "SCHL", "ESR", "ST")
#   popDataA <- fread("../input/pums/ss13pusa.csv", select=colsToKeep ) 
#   popDataB <- fread("../input/pums/ss13pusb.csv", select=colsToKeep )
popDataA <- fread("./ss13pusa.csv", select=colsToKeep )
popDataB <- fread("./ss13pusb.csv", select=colsToKeep )
populData <- rbind(popDataA, popDataB)
rm(popDataA, popDataB)
save(populData, file="populData.RData")