library(shiny)
library(tidyverse)
library(plotly)

#read in csv, change to /input/SavantData.csv to change the year if you want, this is because the 
# file cant be uploaded to github, there is data from 2020 uploaded to test it out!
statcast_data <- read_csv("/Users/matthew/SavantHittingData19.csv")
names <- readRDS("mlbnames.rds")

#merge data to create variable with pitcher names
statcast_data <- inner_join(statcast_data, names, by = "pitcher")

#create variable for the count
statcast_data <- statcast_data %>% 
  mutate(count = paste(balls, strikes, sep = "-"))

ui <- navbarPage("Statcast Data",
                 tabPanel("Pitching",
                    sidebarLayout(
                        sidebarPanel(
                            selectInput(inputId = "Count",
                            label = "Select a Count:",
                            choices = c("0-0", "0-1", "1-1", "2-1", "2-2", "3-2", "3-1", "3-0", "1-2", 
                                    "1-0", "2-0", "0-2")),
                    selectInput(inputId = "Pitcher",
                            label = "Select a Pitcher:",
                            choices = unique(statcast_data$PLAYERNAME))),
                mainPanel(
                plotlyOutput("plot")
            ))),
                tabPanel("Hitting",
                  sidebarLayout(
                     sidebarPanel(
                         selectInput(inputId = "Batter",
                                     label = "Select a Batter",
                                     choices = unique(statcast_data$player_name)),
                         sliderInput(inputId = "Launch_ang",
                                     label = "Select a Launch angle range",
                                     min = -70, max = 70, value = c(-70,70)),
                         sliderInput(inputId = "Ev",
                                     label = "Select an Exit Velocity Range",
                                     min = 0, max = 120, value = c(0,120)),
                         checkboxGroupInput(inputId = "type",
                                            label = "Hit Events",
                                            choices = c("single", "double", "triple", "home_run",
                                                        "field_out"),
                                            selected = c("single", "double", "triple", "home_run",
                                                         "field_out"))),
                         mainPanel(
                             plotOutput("plot_2")
                         ))),
                tabPanel("About",
                         mainPanel(h1("About the App"),
                                   h6("This app shows the different pitch and hit locations of players from 2017 to
                                      2019. The data was collected from MLB's Savant Data using Bill Petti's baseballr package. 
                                      The app was created by Matthew Wankiewicz."))
))



# Define server to get plots
server <- function(input, output) {
  pitch_reactive <- reactive({
    statcast_data %>% filter(count == input$Count, PLAYERNAME == input$Pitcher) 
  })
  bat_reactive <- reactive({
    data <- statcast_data %>% drop_na(launch_speed) %>% filter(player_name == input$Batter, launch_angle <= input$Launch_ang[2], 
                             launch_angle >= input$Launch_ang[1], launch_speed <= input$Ev[2],
                             launch_speed >= input$Ev[1], type == "X")
    data[data$events%in%input$type,]
  })
  
  output$plot <- renderPlotly(ggplotly(ggplot(pitch_reactive(), aes(plate_x, plate_z, color = pitch_name)) + geom_point() + geom_rect(xmin = -.947, xmax=.947, ymin = 1.5, ymax = 3.6, color = "black", fill = "light grey",
                                                                                                                           alpha = 0.01) +
                              coord_equal() + scale_x_continuous("Horizontal location (ft.)", limits = c(-2,2)) + 
                              scale_y_continuous("Vertical location (ft.)", limits = c(0,5)) + ggtitle(label = "Pitch Locations in Different Counts")))
                            
  output$plot_2 <- renderPlot(ggplot(bat_reactive(), aes(hc_x, hc_y, color = events)) + geom_point() + 
                                scale_y_reverse() + geom_segment(aes(x = 126, y = 205, xend = 226, yend = 100), size = 1, color = "black") + 
                                geom_segment(aes(x = 126, y = 205, xend = 26, yend = 100), size = 1, color = "black"))
}

# Run the application 
shinyApp(ui = ui, server = server)
