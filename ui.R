library(shiny)
library(shinyWidgets)
library(learnr)
library(sortable)
library(shinydashboard)
library(shinyBS)
interactive()
dashboardPage( skin = "red",
               dashboardHeader(
                 title = "PRZYGODOWY QUIZ",
                 titleWidth = 450),
               
               dashboardSidebar(
                 sidebarMenu(
                   menuItem("Graj", tabName = "graj", icon = icon("arrow-alt-circle-down")),
                   menuItem("Kategorie", tabName = "kategorie", icon = icon("bookmark")),
                   menuSubItem("Literatura", tabName = "literatura"),
                   menuSubItem("Geografia", tabName = "geografia"),
                   menuSubItem("Sport", tabName = "sport")
                 )
               ),
               dashboardBody(
                 tabItems(
                   tabItem(tabName = "kategorie",
                           h2("Wybierz jedną z kategorii")
                   ),
                   tabItem(tabName = "literatura",
                           h2("Kategoria: Literatura"), h3(selectInput("pytania", 
                                                                       label = h1("Wybierz pytanie"),
                                                                       choices = list("Wybierz","Pytanie 1","Pytanie 2","Pytanie 3"),
                                                                       selected = "Wybierz"
                           ),
                           
                          
                           
                           h1("Odpowiedz na następujące pytanie:"),
                           
                           bsCollapse(
                             bsCollapsePanel( title = "rozwiń/zwiń",
                                              uiOutput("odp")
                             ),
                             id = "collapser", multiple = FALSE, open = NULL
                           ),
                           h2("Wybrane pytanie"),
                           h3(textOutput("wybrane_pytanie")),
                           h2("Udzielona odpowiedź"),
                           h3(textOutput("udzielona_odpowiedz"))
                           
                           )),
                   
                   tabItem(tabName = "geografia",
                           h2("Kategoria: Geografia", selectInput("Lista pytań", h3("Lista pytań"), choices = list("Pytanie 1" = 1, "Pytanie 2" = 2, "Pytanie 3" = 3, "Pytanie 4" = 4, "Pytanie 5" = 5, "Pytanie 6" = 6, "Pytanie 7" = 7), selected = 1))
                   ),
                   tabItem(tabName = "sport",
                           h2("Kategoria: Sport", selectInput("Lista pytań", h3("Lista pytań"), choices = list("Pytanie 1" = 1, "Pytanie 2" = 2, "Pytanie 3" = 3, "Pytanie 4" = 4, "Pytanie 5" = 5, "Pytanie 6" = 6, "Pytanie 7" = 7), selected = 1))
                   )
                   
                 )
               )
)
