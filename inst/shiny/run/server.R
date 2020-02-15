# Define server logic required to draw a line graph and to show mean, max and min values
server <- function(input, output,session) {

  output$mtble <-renderPrint({
    ( mean (jsonE$Temperature$Value ))

  })

  output$mtble3 <-renderPrint({



    (max(jsonE$Temperature$Value))})

  output$mtble4 <-renderPrint({(min(jsonE$Temperature$Value))


  })

  output$Graph <- renderPlot(
    ggplot2::ggplot(jsonE, ggplot2::aes(x=jsonE$DateTime, y=jsonE$Temperature$Value,group=1 )) +
      ggplot2::geom_line() +
      ggplot2::theme(axis.text.x =  ggplot2::element_text(angle = 90))+
      ggplot2::labs(x="Date", y="Temperature")


  )
}

