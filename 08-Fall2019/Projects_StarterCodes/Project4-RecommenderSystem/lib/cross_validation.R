########################
### Cross Validation ###
########################

### Author: Chengliang Tang
### Project 3

cv.function <- function(dat_train, K, f, lambda){
  ### Input:
  ### - train data frame
  ### - K: a number stands for K-fold CV
  ### - tuning parameters 
  
  n <- dim(dat_train)[1]
  n.fold <- round(n/K, 0)
  set.seed(0)
  s <- sample(rep(1:K, c(rep(n.fold, K-1), n-(K-1)*n.fold)))  
  train_rmse <- matrix(NA, ncol = 10,nrow = K)
  test_rmse <- matrix(NA, ncol = 10, nrow = K)
  
  for (i in 1:K){
    train.data <- dat_train[s != i,]
    test.data <- dat_train[s == i,]
    
    result <- gradesc(f = f, lambda =lambda,
                   lrate = 0.01, max.iter = 100, stopping.deriv = 0.01,
                               data = dat_train, train = train.data, test = test.data)
  
    train_rmse[i,] <-  result$train_rmse
    test_rmse[i,] <-   result$test_rmse
    
  }		
  return(list(mean_train_rmse = apply(train_rmse, 2, mean), mean_test_rmse = apply(test_rmse, 2, mean),
         sd_train_rmse = apply(train_rmse, 2, sd), sd_test_rmse = apply(test_rmse, 2, sd)))
}