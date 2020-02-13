# Define server logic required to draw a line graph and to show mean, max and min values
server <- function(input, output,session) {

  output$mtble <-renderPrint({
    ( mean (valori ))

  })

  output$mtble3 <-renderPrint({



    (max(valori))})

  output$mtble4 <-renderPrint({(min(valori))


  })

  output$Graph <- renderPlot(
    ggplot(jsonE, aes(x=jsonE$DateTime, y=jsonE$Temperature$Value,group=1 )) +
      geom_line() +
      theme(axis.text.x = element_text(angle = 90))+
      labs(x="Date", y="Temperature")


  )
}
#start shinyApp
shinyApp(ui = ui, server = server)
