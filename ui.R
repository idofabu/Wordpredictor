### Data Science Capstone : Course Project
### ui.R file for the Shiny app
### Github repo : https://github.com/idofabu/Wordpredictor

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone: Course Project",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: ABOOBACKER SIDHEEQ MACHINGAL</strong>"),
                            br(),
                            HTML("<strong>Date: 8 February 2018</strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Enter a partially complete sentence to begin the next word prediction"),
                                textInput("inputString", "Enter a partial sentence here",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("Predicted Next Word"),
                                verbatimTextOutput("prediction"),
                                strong("Sentence Input:"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                textOutput('text1'),
                                br(),
                                strong("Note:"),
                                tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                textOutput('text2')
                              )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                              includeMarkdown("about.md")
                            )
                   )
)
)