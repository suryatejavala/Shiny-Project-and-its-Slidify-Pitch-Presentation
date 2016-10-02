

AnimePred <- function(mood){
        if (mood=="happy") "Arakawa Under the Bridge"
        else if (mood=="sad") "Shigatsu Wa Kimi No Uso"
        else if (mood=="alone") "Kara no Kyoukai"
        else if (mood=="angry") "Gintama"
        else if (mood=="bitchy") "Psycho Pass"
        else if (mood=="blank") "Nisekoi"
        else if (mood=="confused") "Kimi no Na wa."
        else if (mood=="depressed") "Fullmetal Alchemist: Brotherhood"
        else if (mood=="energetic") "One Punch Man"
        else if (mood=="geeky") "Steins;Gate"
        else if (mood=="high") "Death Note"
        else if (mood=="lazy") "Hyouka"
        else if (mood=="pleased") "Kimi no Na wa."
}

MoviePred <- function(movie){
             if (movie=="action") "The Dark Knight (2008)"
        else if (movie=="musicals") "The Lion King (1994)"
        else if (movie=="biopic") "Schindler's list (1994)"
        else if (movie=="period") "Pride and Prejudice (2005)"
        else if (movie=="romance") "The Artist (2011)"
        else if (movie=="animation") "Spirited Away (2001)"
        else if (movie=="science fiction") "Inception (2010)"
        else if (movie=="cult") "Pulp Fiction (1994)"
        else if (movie=="disaster") "Armageddon (1998)"
        else if (movie=="spy") "Casino Royale (2006)"
        else if (movie=="drama") "The Shawshank Redemption (1994)"
        else if (movie=="fantasy") "Pan's Labyrinth (2006)"
        else if (movie=="thriller") "The Silence of the Lambs (1991)"
        else if (movie=="gangster") "GoodFellas (1990)"
        else if (movie=="war") "Saving Private Ryan (1998)"
        else if (movie=="westerns") "Django Unchained (2012)"
        else if (movie=="horror") "Poltergeist (1982)"
        else if (movie=="adventure") " The Lord of the Rings: The Return of the King (2003)"
   }
        

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$mood})
                output$prediction <- renderPrint({AnimePred(input$mood)})
                
                output$inputValue2 <- renderPrint({input$movie})
                output$prediction2 <- renderPrint({MoviePred(input$movie)})
        }
)