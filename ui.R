
shinyUI(
        pageWithSidebar(
                
                headerPanel("Our TV (Anime) & Movie suggestions based on your mood "),
                sidebarPanel(
                        textInput('mood', label="How are you feeling right now ?(caps off)"),
                        textInput('movie', label="Your Favorite Genre (caps off)"),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Result'),
                        h4('You are feeling'),
                        verbatimTextOutput("inputValue"),
                        h4('You specified your genre as'),
                        verbatimTextOutput("inputValue2"),
                        h4('very well then, we recommend you to watch this Anime '),
                        verbatimTextOutput("prediction"),
                        h4('and you can watch this movie '),
                        verbatimTextOutput("prediction2")
                )
        )
)