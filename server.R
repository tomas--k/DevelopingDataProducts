

shinyServer(function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    iris[, c(input$xcol, input$ycol)]
  })
  
  clusters <- reactive({
    kmeans(selectedData(), input$clusters)

  })
  

  
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 17, cex = 3)
    points(clusters()$centers, pch = 3, cex = 7, lwd = 4)
  })
  

  output$table <- renderTable({
    data.frame(cbind(selectedData()))
  })
  
 
  
  
  
})
