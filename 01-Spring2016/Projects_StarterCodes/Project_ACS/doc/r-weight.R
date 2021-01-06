library(survey)

options( "survey.replicates.mse" = TRUE) 

acs.wt<-svrepdesign(weights=~WGTP, repweights=acs13husa[,152:231], 
                       type="JKn", scale = 4/80, rscale=rep(1,80),
                       data=acs13husa, combined=TRUE)

svymean(~VALP, acs.wt, na.rm=T)

