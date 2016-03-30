#############################################################
### Construct visual features for training/testing images ###
#############################################################

### Author: Yuting Ma
### Project 3
### ADS Spring 2016

feature <- function(img_dir, img_name, data_name=NULL){
  
  ### Construct process features for training/testing images
  ### Sample simple feature: Extract raw pixel values os features
  
  ### Input: a directory that contains images ready for processing
  ### Output: an .RData file contains processed features for the images
  
  ### load libraries
  library("EBImage")
  
  n_files <- length(list.files(img_dir))
  
  ### determine img dimensions
  img0 <-  readImage(paste0(img_dir, img_name, "_", 1, ".jpg"))
  mat1 <- as.matrix(img0)
  n_r <- nrow(img0)
  n_c <- ncol(img0)
  
  ### store vectorized pixel values of images
  dat <- array(dim=c(n_files, n_r*n_c)) 
  for(i in 1:n_files){
    img <- readImage(paste0(img_dir, img_name, "_", i, ".jpg"))
    dat[i,] <- as.vector(img)
  }
  
  ### output constructed features
  if(!is.null(data_name)){
    save(dat, file=paste0("./output/feature_", data_name, ".RData"))
  }
  return(dat)
}
