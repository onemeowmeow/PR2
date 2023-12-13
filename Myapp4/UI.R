library(shiny)
shinyUI(pageWithSidebar(
  
  headerPanel("ConditionalPanel 應用 - Generating distribution"),
  
  sidebarPanel(
    selectInput("method", "選擇計算方式:", choices=c("常態分布"="norm", "t分布"="st")),
    helpText("Setting parameter(s) for distribution model"),
    conditionalPanel(condition="input.method=='norm'",
                     numericInput(inputId="mu", label="mean", value=0),
                     numericInput(inputId="sd", label="standard deviation", value=1, min=0)
    ),
    conditionalPanel(condition="input.method=='st'",
                     numericInput(inputId="df", label="Df", value=10, min=1)
    ),
    sliderInput(inputId="obs", 
                label="Number of observations:", 
                min = 1, max = 1000, value = 500)
  ),
  
  mainPanel(
    plotOutput("distPlot")
  )
  
))