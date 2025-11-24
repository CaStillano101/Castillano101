install.packages("shiny")
library(shiny)

ui <- fluidPage(
  titlePanel("Simple Car Race Game"),
  fluidRow(
    column(4, actionButton("accelerate", "Accelerate Car 1")),
    column(4, actionButton("accelerate2", "Accelerate Car 2")),
    column(4, actionButton("accelerate3", "Accelerate Car 3"))
  ),
  fluidRow(
    column(12, plotOutput("raceTrack", height = "300px"))
  )
)

server <- function(input, output, session) {
  
  # Initial positions of the cars
  car1_position <- reactiveVal(0)
  car2_position <- reactiveVal(0)
  car3_position <- reactiveVal(0)
  
  # Accelerate car 1 when the button is pressed
  observeEvent(input$accelerate, {
    car1_position(car1_position() + runif(1, 5, 10))  # random acceleration
  })
  
  # Accelerate car 2 when the button is pressed
  observeEvent(input$accelerate2, {
    car2_position(car2_position() + runif(1, 5, 10))  # random acceleration
  })
  
  # Accelerate car 3 when the button is pressed
  observeEvent(input$accelerate3, {
    car3_position(car3_position() + runif(1, 5, 10))  # random acceleration
  })
  
  # Render the race track with the positions of the cars
  output$raceTrack <- renderPlot({
    plot(1:100, rep(0, 100), type = "n", xlab = "Distance", ylab = "Race Track", xlim = c(0, 100), ylim = c(0, 1))
    points(car1_position(), 0.5, col = "blue", pch = 19, cex = 2)  # Car 1 (blue)
    points(car2_position(), 0.5, col = "red", pch = 19, cex = 2)   # Car 2 (red)
    points(car3_position(), 0.5, col = "yellow", pch = 19, cex = 2) # Car 3 (yellow)
  })
}

# Run the application
shinyApp(ui = ui, server = server)

