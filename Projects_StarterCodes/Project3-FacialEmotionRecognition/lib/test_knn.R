########################################
### Classification with testing data ###
########################################

test <- function(k, dat_test){
  
  ### Input: 
  ###  - the fitted classification model using training data
  ### (since knn does not need to train, we only specify k here)
  ###  - processed features from testing images 
  ### Output: training model specification
  

  
  ### make predictions
  pred <- class::knn(train = dat_train[,-which(names(dat_train) == 'emotion_idx')], 
                     test = dat_test[,-which(names(dat_test) == 'emotion_idx')], 
                     cl = dat_train$emotion_idx, 
                     k = k)
  return(pred)
}
