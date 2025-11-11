# install.packages(c("ggplot2", "dplyr", "readr", "psych", "plotly", "shiny", "corrplot"))
library(shiny)
library(dplyr)
library(plotly)
library(tidyverse)
library(psych)
library(readr)
library(corrplot)

data <- read_csv("Students Social Media Addiction.csv")

head(data)
str(data)
summary(data)

summary(data)
colSums(is.na(data))

# ------------------------------------------------------
# Shiny App: Social Media Addiction EDA Dashboard
# ------------------------------------------------------

# Read the dataset
data <- read.csv("Students Social Media Addiction.csv")

# Select only numeric columns
num_data <- data %>%
  dplyr::select(where(is.numeric)) %>%
  dplyr::select(-Student_ID)
# Define UI
ui <- fluidPage(
  titlePanel("📊 Social Media Addiction - EDA Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      h4("Histogram Explorer"),
      selectInput("num_var", "Choose a numeric variable:", choices = names(num_data)),
      br(),
      h4("Correlation Matrix"),
      helpText("Displays relationships among all numeric variables")
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Histogram", plotlyOutput("histPlot")),
        tabPanel("Correlation Heatmap", plotOutput("corrPlot"))
      )
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  # Histogram (interactive)
  output$histPlot <- renderPlotly({
    p <- ggplot(num_data, aes_string(x = input$num_var)) +
      geom_histogram(binwidth = 1, fill = "#69b3a2", color = "white") +
      theme_minimal(base_size = 14) +
      labs(
        title = paste("Distribution of", input$num_var),
        x = input$num_var,
        y = "Count"
      )
    ggplotly(p)
  })
  
  # Correlation Heatmap
  output$corrPlot <- renderPlot({
    cor_matrix <- cor(num_data, use = "complete.obs")
    corrplot(cor_matrix, method = "color", tl.cex = 0.9, number.cex = 0.7,
             col = colorRampPalette(c("#6D9EC1", "white", "#E46726"))(200))
  })
}

# Run the application
shinyApp(ui = ui, server = server)

