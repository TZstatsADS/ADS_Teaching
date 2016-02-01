library(survey)

db_rclus1<-svrepdesign(weights=~WGTP, repweights=acs13husa[,152:231], 
                       type="JKn", rscale = 4/80,
                       data=acs13husa, combined=FALSE)
svymean(~api00+api99,db_rclus1)
