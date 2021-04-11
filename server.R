shinyServer(function(input, output,session){
  
  
  output$wybrane_pytanie  <- renderText({input$pytania})
  output$udzielona_odpowiedz <- renderText({input$pytanie})
  output$odp <- renderUI({
    
    switch(input$pytania,
           "Pytanie 1" = checkboxGroupInput("pytanie", "Jak miał na nazwisko główny bohater Pana Tadeusza",
                                            choices = c("Rejent","Podkomorzy", "Spolica", "nie było wspomniane"),
                                            selected = "option2"),
           "Pytanie 2" = checkboxGroupInput("pytanie", "Kto napisał Harrego Pottera?",
                                            choices = c("J.K.Rowling","Olga Tokarczuk","Stephen King", "Nicholas Sparks"),
                                            selected = "option2"),
           "Pytanie 3" = checkboxGroupInput("pytanie", "Której książki nie napisał Stephen King?",
                                            choices = c("To","Lśnienie", "Carrie", "Szczęki"),
                                            selected = "option2")
           
    )
    
  })
  
  
  
  
  observe({
    if (input$pytania != "Wybierz") {
      updateCollapse(session,"collapser",open = c('rozwiń/zwiń'))
      
    }
  })})
