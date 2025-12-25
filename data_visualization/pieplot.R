#========================= pie chart =============================

population <- c(40,25,20,15)
country <- c ("China","India","Russia","UAE")
percent <- round( population/ sum(population)*100)

label <- paste (country,percent,"%")

pie(population,
    labels = label,
    main= "Country Wise Population Report",
    clockwise = TRUE,                     # TRUE(clockwise rotation), FALSE(anticlock-wise rotation)
    init.angle =90,       # rotation based on angle 
    col = c("red","blue","purple","green"),
    radius = -1            # for radius
    
)

           #----------------task-----------------

food_data <- data.frame(
  name = c("Briyani","Shawarma","Dosa","Naan","Sushi"),
  likes = c(40,20,25,15,10)
)

pie(
  food_data$likes,
  label = food_data$name,
  col = rainbow(5),
  main = " Food Data Analysis"
  )

     #---------------------- task 2 ----------------------


# Movie Genre Preference

movie <- data.frame (
  names <- c("Sci-Fi","Thriller","Horror","Comedy","Fantasy","Action"),
  grade <- c(25,15,10,10,15,25)
)

pie(
  movie$grade,
  label = movie$names,
  col = c("blue","black","red","yellow","purple","orange"),
  clockwise = FALSE,
  main = " Movie Genre Preference ",
  radius = 1
)



#----------------------task 3-------------------



sk <- data.frame(
  stars <- c("5 Star","4 Star","3 Star","2 Star"),
  rate <- c(50,30,15,5)
  
)

lab <- paste(stars,"(",rate,"%",")")

pie(
  sk$rate,
  label= lab,
  col = c("gold","lightgreen","orange","red"),
  main="Avatar Movie Rating Analysis",
  clockwise = TRUE,
  init.angle = 360
)

#--------------------------------------------------------------