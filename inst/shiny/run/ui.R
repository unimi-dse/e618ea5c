# Defining Ui for shiny App
ui<-
shiny::fluidPage(
  #Defining Mainpanel for creating different pages,
  #mtble shows temperature mean
  #mtble3 shows temperature maximum
  #mtble4 shows temperature minimum
  #Graph table shows a line graph, where on the x-axis is represented time and on the y-axis are represented the temperatures
  shiny::mainPanel(shiny::tabsetPanel (type="tabs",
                         shiny::tabPanel("Mean, Max and Min",
                                  h4("Mean"),verbatimTextOutput(outputId = "mtble"),
                                  h4("Max"),verbatimTextOutput(outputId = "mtble3"),
                                  h4("min"),verbatimTextOutput(outputId = "mtble4")
                         ),
                         shiny::tabPanel("Temperature Graph" , plotOutput(outputId = "Graph"),

                         ))))

