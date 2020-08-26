########################################
### Classification with testing data ###
########################################

test <- function(model, dat_test){
  
  ### Input: 
  ###  - the fitted classification model using training data
  ###  - processed features from testing images 
  ### Output: training model specification
  
  ### load libraries
  library("e1071")
  
  ### make predictions
  pred <- predict(model, dat_test)
  return(pred)
}
