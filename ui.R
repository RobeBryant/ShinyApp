library(shiny)

shinyUI(fluidPage(
  titlePanel("Relationship between Ozone and Temperature"),
  sidebarLayout(
    sidebarPanel(
      "Select time interval (in Months) and Wind interval",
      sliderInput("slidermo","Month:", min = 5, max = 9, value = c(5,9)),
      sliderInput("sliderwind","Wind (mph):", min = 1.7, max = 20.7, value = c(1.7,20.7))
    ),
    mainPanel(
      "Linear Regression Model predicting Ozone from Temperature based on Wind values and 
      period of the year",
      plotOutput("plotoz")
    )
  )
))
