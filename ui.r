library(shiny)
library(plotly)
library(DT)

shinyUI(pageWithSidebar(
  headerPanel("Interactive charts of restaurant in Colorado"),
  
  sidebarPanel(
   radioButtons(inputId="rate",
                label="chose success rate or failture rate",
               choices = c("failturerate"="frate","successrate"="srate"),selected="srate")
  ),
  mainPanel(
    plotOutput("bar",height=500)
  )
))