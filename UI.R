library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "First dashboard"),
    dashboardSidebar(
      sliderInput("bins", "Number of Breaks", 1, 100, 50),
      sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuSubItem("Dashboard Finance", tabName = "finance"),
      menuSubItem("Dashboard Sales", tabName = "sales"))),
    dashboardBody(
      tabItems(
        tabItem(tabName = "dashboard",
              fluidRow(
                box(plotOutput("histogram"))
              )
        ),
        tabItem(tabName = "finance"
        ),
        tabItem(tabName = "sales",
              h1("sales Dashboard")
        )
      )
    )
  )
)