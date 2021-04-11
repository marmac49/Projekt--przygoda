library(shiny)

shinyUI(fluidPage(
  titlePanel("Przygoda Rycerza Kałasznikowa"),
  sidebarLayout(
    sidebarPanel(
      p("Start")
    ),
    mainPanel(
      br(),
      p("Wyjście")
    )
  )
))

