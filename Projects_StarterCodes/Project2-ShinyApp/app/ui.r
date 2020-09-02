#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#ag
#    http://shiny.rstudio.com/
#
# Define UI for application that draws a histogram
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
#load('./output/covid-19.RData')
shinyUI(navbarPage(title = 'COVID-19',
                   fluid = TRUE,
                   collapsible = TRUE,
                   #Select whichever theme works for the app 
                   theme = shinytheme("journal"),
                   #--------------------------
                   #tab panel 1 - Home
                   tabPanel("Home",icon = icon("home"),
                            fluidPage(
                              fluidRow(
                                column(12,
                                       h1("Global Cases overview across time"),
                                       fluidRow(
                                         #select the date until now
                                         column(6,
                                                sliderInput('date','Date Unitl:',
                                                            #first day of data recording
                                                            min = as.Date(date_choices[1]),
                                                            #present day of data recording
                                                            max = as.Date(tail(date_choices,1)),
                                                            value = as.Date(date_choices[1]),
                                                            timeFormat = "%Y-%m-%d",
                                                            animate = TRUE, step = 5),
                                                fluidRow(
                                                  #select the country we want to see the trend
                                                  column(6, 
                                                         selectInput('country','Which Country?',
                                                                     choices = country_names_choices,
                                                                     selected = 'United States of America')),
                                                  #select whether want case number in log-scale or not
                                                  column(6,
                                                         radioButtons("log_scale", "In Log Scale:",
                                                                      choices = c(TRUE,FALSE),
                                                                      selected = FALSE))
                                                          )
                                                ),
                                         #render plotly output
                                         column(width = 6,
                                                plotlyOutput('case_overtime'))
                                              )
                                        )
                                      )
                                    )
                                ),
                   #--------------------------
                   #tab panel 2 - Map
                   tabPanel("Maps",icon = icon("map-marker-alt"),div(class = 'outer',
                            leafletOutput("map", width = "100%", height = "1200"),
                            absolutePanel(id = "control", class = "panel panel-default", fixed = TRUE, draggable = TRUE,
                                          top = 300, left = 20, right = "auto", bottom = "auto", width = 250, height = "auto",
                                          selectInput('choices','Which data to visualize:',
                                                      choices = c('Cases','Death'),
                                                      selected = c('Cases')),
                                          sliderInput('date_map','Input Date:',
                                                      #first day of data recording
                                                      min = as.Date(date_choices[1]),
                                                      #present day of data recording
                                                      max = as.Date(tail(date_choices,1)),
                                                      value = as.Date('2020-04-01','%Y-%m-%d'),
                                                      timeFormat = "%Y-%m-%d",
                                                      animate = TRUE, step = 5),
                                          style = "opacity: 0.80"))),
                   # ----------------------------------
                   #tab panel 3 - Source
                   tabPanel("Data Source",icon = icon("cloud-download"),
                            HTML(
                              "<h2> Data Source : </h2>
                              <h4> <p><li><a href='https://coronavirus.jhu.edu/map.html'>Coronavirus COVID-19 Global Cases map Johns Hopkins University</a></li></h4>
                              <h4><li>COVID-19 Cases : <a href='https://github.com/CSSEGISandData/COVID-19' target='_blank'>Github Johns Hopkins University</a></li></h4>
                              <h4><li>Spatial Polygons : <a href='https://www.naturalearthdata.com/downloads/' target='_blank'> Natural Earth</a></li></h4>"
                            ))
                   
))