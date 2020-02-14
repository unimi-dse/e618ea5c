# Define server logic required to draw a line graph and to show mean, max and min values
server <- function(input, output,session) {

  output$mtble <-renderPrint({
    (mean (jsonE$Temperature$Value))

  })

  output$mtble3 <-renderPrint({



    (max(jsonE$Temperature$Value))})

  shiny::output$mtble4 <-renderPrint({(min(jsonE$Temperature$Value))


  })

  ggplot2::output$Graph <- renderPlot(
    ggplot2::ggplot(jsonE, aes(x=jsonE$DateTime, y=jsonE$Temperature$Value,group=1 )) +
      ggplot2::geom_line() +
      theme(axis.text.x = element_text(angle = 90))+
      labs(x="Date", y="Temperature")


  )
}

