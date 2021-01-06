###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df = pairwise_data, par = NULL){
  ### Train a classfication model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  

  
  ### Train with knn
  if(is.null(par)){
    k = 5
  } else {
    k = par$k
  }
  
  # model <- 
  
  return(model)
}

