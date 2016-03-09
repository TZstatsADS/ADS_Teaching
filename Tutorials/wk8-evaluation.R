load("./output/feature_eval.RData") 
load("label_eval.RData") 

source("./lib/train.R")
source("./lib/test.R")

n <- 2000
n_rep <- 20
K <- 5
ind_cat <- which(eval_label == 1) # 1000 cats
ind_dog <- which(eval_label == 0) # 1000 dogs
n_cat_fold <- n_dog_fold <- 200

CV_err <- rep(0, n_rep)
CV_fit <- array(dim=c(n, n_rep))
train_time <- array(dim=c(K, n_rep))

for(r in 1:n_rep){
  set.seed(309+r)
  assign_cat <- sample(rep(1:K, times=n_cat_fold))
  set.seed(1310+r)
  assign_dog <- sample(rep(1:K, times=n_dog_fold))
  
  CV_index <- rep(NA, n)
  CV_index[ind_cat] <- assign_cat
  CV_index[ind_dog] <- assign_dog
  
  for(c in 1:K){
    cat("fold= ", c, "\n")
    ind_test <- which(CV_index == c)
    dat_train <- feature_eval[-ind_test,]
    label_train <- label_eval[-ind_test]
    dat_test <- feature_eval[ind_test,]
    label_test <- label_eval[ind_test]
    train_time[c,r] <- system.time(mod_train <- train(dat_train, label_train))[1]
    pred_test <- test(mod_train, dat_test)
    CV_fit[ind_test, r] <- pred_test
  }
  cv_err[r] <- mean(CV_fit[,r] != label_eval)
}

save(CV_fit, cv_err, train_time, file="CV_result.RData")

cat("Mean of CV Error =", round(mean(CV_err), digits=4), "\n")
cat("SD of CV Error =", round(sd(CV_err), digits=4), "\n")
cat("Mean Training Name =", round(mean(train_time), digits=2), "\n")