library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("My shiny app"),
    
 
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
           selectInput(inputId="symptom-list", label="Label",choices=as.character(unique(dataframe$Simptom)))
        ),

        # Show a plot of the generated distribution
        mainPanel(
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    dataframe <-reactive({
     inputdata <- read.csv("C:\\Users\\spahija\\Desktop\\PDF-ovi\\Rshiny\\dataset.csv")
        iris      
    })
    
    output$symptomscb <-  renderUI({
        df<- dataframe()
        items <-as.character(df[[1]])
    selectInput("symptom-list", "Label" , items)
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)
