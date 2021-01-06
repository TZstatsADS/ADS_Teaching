#########################################################
### Compute evaluation measures for clustering result ###
#########################################################

### Authors: Jing Wu/Tian Zheng
### Project 4
### ADS Spring 2017

matching_matrix <- function(G,M){
  
  ### Compute the matching matrix following the paper Kang et at.(2009)
  ### The notations are same as in the paper
  
  ### Input: G: Gold standard clusters, numeric vector, same length as number of citations
  ###        M: Machine generated clusters, numeric vector, same length as G
  ### Output: matching matrix as decribed in paper Kang et at.(2009)
  
  ### n is the number of citations
  n <- length(G)
  
  ### initialize the matching matrix
  result_matrix <- matrix(rep(0,4),ncol=2,nrow=2)
  
  ### compute pariwise agreement between two partitions
  for(i in 1:(n-1)){
    for(j in (i+1):n){
      if(G[i]==G[j]&M[i]==M[j]) result_matrix[1,1]<-result_matrix[1,1]+1
      if(G[i]!=G[j]&M[i]==M[j]) result_matrix[1,2]<-result_matrix[1,2]+1
      if(G[i]==G[j]&M[i]!=M[j]) result_matrix[2,1]<-result_matrix[2,1]+1
      if(G[i]!=G[j]&M[i]!=M[j]) result_matrix[2,2]<-result_matrix[2,2]+1
    }
  }
  return(result_matrix)
}

performance_statistics <- function(result_matrix){
  
  ### Compute the four evaluation measures following the paper Kang et at.(2009)
  ### The notations are same as in the paper
  
  ### Input: result_matrix: matching matrix, which is an output from above function
  ### Output: four evaluation statistics
  
  ### Precision = TP/(TP+FP)
  precision <- result_matrix[1,1]/(result_matrix[1,1]+result_matrix[1,2])
  
  ### Recall = TP/(TP+FN)
  recall <- result_matrix[1,1]/(result_matrix[1,1]+result_matrix[2,1])
  
  ### F1 is 2*harmonic mean of presicion and recall
  f1 <- 2*precision*recall/(precision+recall)
  
  ### Accuracy is the fraction of agreements
  accuracy <- (result_matrix[1,1]+result_matrix[2,2])/sum(result_matrix)
  return(list(precision=precision, recall=recall, f1=f1, accuracy=accuracy))
}