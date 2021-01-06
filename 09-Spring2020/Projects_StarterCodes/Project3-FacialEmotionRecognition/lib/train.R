###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df = pairwise_data, par = NULL){
  ### Train an SVM model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
  ### load libraries
  library("e1071")
  
  ### Train with SVM
  if(is.null(par)){
    gamma = 10^(-1)
    cost = 1
  } else {
    gamma = par$gamma
    cost = par$cost
  }
  
   svm_model <- svm(categoryID~., data = feature_df,
                    kernel = "radial", gamma = gamma, cost = cost) 

  return(model = svm_model)
}

