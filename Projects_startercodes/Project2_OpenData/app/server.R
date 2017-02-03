library(shiny)
library(choroplethr)
library(choroplethrZip)
library(dplyr)

## Define Manhattan's neighborhood
man.nbhd=c("all neighborhoods", "Central Harlem", 
           "Chelsea and Clinton",
           "East Harlem", 
           "Gramercy Park and Murray Hill",
           "Greenwich Village and Soho", 
           "Lower Manhattan",
           "Lower East Side", 
           "Upper East Side", 
           "Upper West Side",
           "Inwood and Washington Heights")
zip.nbhd=as.list(1:length(man.nbhd))
zip.nbhd[[1]]=as.character(c(10026, 10027, 10030, 10037, 10039))
zip.nbhd[[2]]=as.character(c(10001, 10011, 10018, 10019, 10020))
zip.nbhd[[3]]=as.character(c(10036, 10029, 10035))
zip.nbhd[[4]]=as.character(c(10010, 10016, 10017, 10022))
zip.nbhd[[5]]=as.character(c(10012, 10013, 10014))
zip.nbhd[[6]]=as.character(c(10004, 10005, 10006, 10007, 10038, 10280))
zip.nbhd[[7]]=as.character(c(10002, 10003, 10009))
zip.nbhd[[8]]=as.character(c(10021, 10028, 10044, 10065, 10075, 10128))
zip.nbhd[[9]]=as.character(c(10023, 10024, 10025))
zip.nbhd[[10]]=as.character(c(10031, 10032, 10033, 10034, 10040))

## Load housing data
load("../output/count.RData")
load("../output/mh2009use.RData")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  ## Neighborhood name
  output$text = renderText({"Selected:"})
  output$text1 = renderText({
      paste("{ ", man.nbhd[as.numeric(input$nbhd)+1], " }")
  })
  
  ## Panel 1: summary plots of time trends, 
  ##          unit price and full price of sales. 
  
  output$distPlot <- renderPlot({
    
    ## First filter data for selected neighborhood
    mh2009.sel=mh2009.use
    if(input$nbhd>0){
      mh2009.sel=mh2009.use%>%
                  filter(region %in% zip.nbhd[[as.numeric(input$nbhd)]])
    }
    
    ## Monthly counts
    month.v=as.vector(table(mh2009.sel$sale.month))
    
    ## Price: unit (per sq. ft.) and full
    type.price=data.frame(bldg.type=c("10", "13", "25", "28"))
    type.price.sel=mh2009.sel%>%
                group_by(bldg.type)%>%
                summarise(
                  price.mean=mean(sale.price, na.rm=T),
                  price.median=median(sale.price, na.rm=T),
                  unit.mean=mean(unit.price, na.rm=T),
                  unit.median=median(unit.price, na.rm=T),
                  sale.n=n()
                )
    type.price=left_join(type.price, type.price.sel, by="bldg.type")
    
    ## Making the plots
    layout(matrix(c(1,1,1,1,2,2,3,3,2,2,3,3), 3, 4, byrow=T))
    par(cex.axis=1.3, cex.lab=1.5, 
        font.axis=2, font.lab=2, col.axis="dark gray", bty="n")
    
    ### Sales monthly counts
    plot(1:12, month.v, xlab="Months", ylab="Total sales", 
         type="b", pch=21, col="black", bg="red", 
         cex=2, lwd=2, ylim=c(0, max(month.v,na.rm=T)*1.05))
    
    ### Price per square foot
    plot(c(0, max(type.price[,c(4,5)], na.rm=T)), 
         c(0,5), 
         xlab="Price per square foot", ylab="", 
         bty="l", type="n")
    text(rep(0, 4), 1:4+0.5, paste(c("coops", "condos", "luxury hotels", "comm. condos"), 
                                  type.price$sale.n, sep=": "), adj=0, cex=1.5)
    points(type.price$unit.mean, 1:nrow(type.price), pch=16, col=2, cex=2)
    points(type.price$unit.median, 1:nrow(type.price),  pch=16, col=4, cex=2)
    segments(type.price$unit.mean, 1:nrow(type.price), 
              type.price$unit.median, 1:nrow(type.price),
             lwd=2)    
    
    ### full price
    plot(c(0, max(type.price[,-1], na.rm=T)), 
         c(0,5), 
         xlab="Sales Price", ylab="", 
         bty="l", type="n")
    text(rep(0, 4), 1:4+0.5, paste(c("coops", "condos", "luxury hotels", "comm. condos"), 
                                   type.price$sale.n, sep=": "), adj=0, cex=1.5)
    points(type.price$price.mean, 1:nrow(type.price), pch=16, col=2, cex=2)
    points(type.price$price.median, 1:nrow(type.price),  pch=16, col=4, cex=2)
    segments(type.price$price.mean, 1:nrow(type.price), 
             type.price$price.median, 1:nrow(type.price),
             lwd=2)    
  })
  
  ## Panel 2: map of sales distribution
  output$distPlot1 <- renderPlot({
    count.df.sel=count.df
    if(input$nbhd>0){
      count.df.sel=count.df%>%
        filter(region %in% zip.nbhd[[as.numeric(input$nbhd)]])
    }
    # make the map for selected neighhoods
    
    zip_choropleth(count.df.sel,
                   title       = "2009 Manhattan housing sales",
                   legend      = "Number of sales",
                   county_zoom = 36061)
  })
})