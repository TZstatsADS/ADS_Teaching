library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("2009 Manhattan Housing Sales"),
  
  # Sidebar with a selector input for neighborhood
  sidebarLayout(
    sidebarPanel(
      selectInput("nbhd", label = h5("Choose a Manhattan Neighborhood"), 
                         choices = list("all neighborhoods"=0,
                                        "Central Harlem"=1, 
                                        "Chelsea and Clinton"=2,
                                        "East Harlem"=3, 
                                        "Gramercy Park and Murray Hill"=4,
                                        "Greenwich Village and Soho"=5, 
                                        "Lower Manhattan"=6,
                                        "Lower East Side"=7, 
                                        "Upper East Side"=8, 
                                        "Upper West Side"=9,
                                        "Inwood and Washington Heights"=10), 
                         selected = 0)
      #sliderInput("p.range", label=h3("Price Range (in thousands of dollars)"),
      #            min = 0, max = 20000, value = c(200, 10000))
    ),
    # Show two panels
    mainPanel(
      #h4(textOutput("text")),
      h3(code(textOutput("text1"))),
      tabsetPanel(
        # Panel 1 has three summary plots of sales. 
        tabPanel("Sales summary", plotOutput("distPlot")), 
        # Panel 2 has a map display of sales' distribution
        tabPanel("Sales map", plotOutput("distPlot1")))
    )
 )
))

