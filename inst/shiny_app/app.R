# Load packages

library(shiny)
library(KMeansPack)  # Load your package
library(ggplot2)

ui <- fluidPage(
  titlePanel("K-Means Clustering App"),
  sidebarLayout(
    sidebarPanel(
      numericInput("clusters", "Number of Clusters:", 3, min = 1, max = 10)
    ),
    mainPanel(
      plotOutput("clusterPlot")
    )
  )
)

server <- function(input, output) {
  # Generate random 2D data
  data <- reactive({
    set.seed(123)
    matrix(rnorm(200), ncol = 2)
  })
  
  # Perform K-means clustering using your function
  clusters <- reactive({
    kmeans_clustering(data(), centers = input$clusters)
  })
  
  # Render the plot using your function
  output$clusterPlot <- renderPlot({
    plot_clusters(data(), clusters())
  })
}

# Run the app
shinyApp(ui, server)
