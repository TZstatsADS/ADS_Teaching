#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
#-------------------------------------------------App Server----------------------------------
library(viridis)
library(dplyr)
library(tibble)
library(tidyverse)
library(shinythemes)
library(sf)
library(RCurl)
library(tmap)
library(rgdal)
library(leaflet)
library(shiny)
library(shinythemes)
library(plotly)
library(ggplot2)
#can run RData directly to get the necessary date for the app
#global.r will enable us to get new data everyday
#update data with automated script
source("global.R") 
#load('./output/covid-19.RData')
shinyServer(function(input, output) {
#----------------------------------------
#tab panel 1 - Home Plots
#preapare data for plot
output$case_overtime <- renderPlotly({
    #determin the row index for subset
    req(input$log_scale)
    end_date_index <- which(date_choices == input$date)
    #if log scale is not enabled, we will just use cases
    if (input$log_scale == FALSE) {
        #render plotly figure
        case_fig <- plot_ly()
        #add comfirmed case lines
        case_fig <- case_fig %>% add_lines(x = ~date_choices[1:end_date_index], 
                             y = ~as.numeric(aggre_cases[input$country,])[1:end_date_index],
                             line = list(color = 'rgba(67,67,67,1)', width = 2),
                             name = 'Confirmed Cases')
        #add death line 
        case_fig <- case_fig %>% add_lines(x = ~date_choices[1:end_date_index],
                               y = ~as.numeric(aggre_death[input$country,])[1:end_date_index],
                               name = 'Death Toll')
        #set the axis for the plot
        case_fig <- case_fig %>% 
            layout(title = paste0(input$country,'\t','Trend'),
                   xaxis = list(title = 'Date',showgrid = FALSE), 
                   yaxis = list(title = 'Comfirmed Cases/Deaths',showgrid=FALSE)
                   )
        }
    #if enable log scale, we need to take log of the y values
    else{
        #render plotly figure
        case_fig <- plot_ly()
        #add comfirmed case lines
        case_fig <- case_fig %>% add_lines(x = ~date_choices[1:end_date_index], 
                                           y = ~log(as.numeric(aggre_cases[input$country,])[1:end_date_index]),
                                           line = list(color = 'rgba(67,67,67,1)', width = 2),
                                           name = 'Confirmed Cases')
        #add death line 
        case_fig <- case_fig %>% add_lines(x = ~date_choices[1:end_date_index],
                                           y = ~log(as.numeric(aggre_death[input$country,])[1:end_date_index]),
                                           name = 'Death Toll')
        #set the axis for the plot
        case_fig <- case_fig %>% 
            layout(title = paste0(input$country,'<br>','\t','Trends'),
                   xaxis = list(title = 'Date',showgrid = FALSE), 
                   yaxis = list(title = 'Comfirmed Cases/Deaths(Log Scale)',showgrid=FALSE)
            )
    }
    return(case_fig)
        })
#----------------------------------------
#tab panel 2 - Maps
data_countries <- reactive({
    if(!is.null(input$choices)){
        if(input$choices == "Cases"){
            return(aggre_cases_copy)
            
        }else{
            return(aggre_death_copy)
        }}
})

#get the largest number of count for better color assignment
maxTotal<- reactive(max(data_countries()%>%select_if(is.numeric), na.rm = T))    
#color palette
pal <- reactive(colorNumeric(c("#FFFFFFFF" ,rev(inferno(256))), domain = c(0,log(binning(maxTotal())))))    
    
output$map <- renderLeaflet({
    map <-  leaflet(countries) %>%
        addProviderTiles("Stadia.Outdoors", options = providerTileOptions(noWrap = TRUE)) %>%
        setView(0, 30, zoom = 3) })


observe({
    if(!is.null(input$date_map)){
        select_date <- format.Date(input$date_map,'%Y-%m-%d')
    }
    if(input$choices == "Cases"){
        #merge the spatial dataframe and cases dataframe
        aggre_cases_join <- merge(countries,
                                  data_countries(),
                                  by.x = 'NAME',
                                  by.y = 'country_names',sort = FALSE)
        #pop up for polygons
        country_popup <- paste0("<strong>Country: </strong>",
                                aggre_cases_join$NAME,
                                "<br><strong>",
                                "Total Cases: ",
                                aggre_cases_join[[select_date]],
                                "<br><strong>")
        leafletProxy("map", data = aggre_cases_join)%>%
            addPolygons(fillColor = pal()(log((aggre_cases_join[[select_date]])+1)),
                        layerId = ~NAME,
                        fillOpacity = 1,
                        color = "#BDBDC3",
                        weight = 1,
                        popup = country_popup) 
    } else {
        #join the two dfs together
        aggre_death_join<- merge(countries,
                                 data_countries(),
                                 by.x = 'NAME',
                                 by.y = 'country_names',
                                 sort = FALSE)
        #pop up for polygons
        country_popup <- paste0("<strong>Country: </strong>",
                                aggre_death_join$NAME,
                                "<br><strong>",
                                "Total Deaths: ",
                                aggre_death_join[[select_date]],
                                "<br><strong>")
        
        leafletProxy("map", data = aggre_death_join)%>%
            addPolygons(fillColor = pal()(log((aggre_death_join[[select_date]])+1)),
                        layerId = ~NAME,
                        fillOpacity = 1,
                        color = "#BDBDC3",
                        weight = 1,
                        popup = country_popup)
        
        }
    })


})