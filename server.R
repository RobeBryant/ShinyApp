library(shiny)

shinyServer(function(input, output) {
   
  output$plotoz <- renderPlot({
    minMo <- input$slidermo[1]
    maxMo <- input$slidermo[2]
    minW <- input$sliderwind[1]
    maxW <- input$sliderwind[2]
    airdata <- airquality[airquality$Wind >= minW & airquality$Wind <= maxW &
                            airquality$Month >= minMo & airquality$Month <= maxMo,]
    model <- lm(Ozone~Temp, data = airdata)
    plot(Ozone~Temp, data = airdata,xlim=c(50,100),ylim=c(0,175),xlab="Temperature (F)", 
         ylab="Ozone (ppb)",main = "Plot of Ozone vs Temperature")
    abline(model, col = "red", lwd = 2)
  })
})
