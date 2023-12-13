library(shiny)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  #headerPanel:標題
  headerPanel("Hello Shiny!"),  
 
  # sidebarPanel,value: 預設值
  sidebarPanel(
    sliderInput("obs", "Number of observations:", min = 0, max = 1000, value = 500)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))