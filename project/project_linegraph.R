weather <- data.frame(
  day = 1:15,
  temperature = c(28, 30, 32, 31, 29, 27, 26, 28, 30, 33, 34, 35, 36, 34, 32),
  humidity = c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69),
  rainfall = c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)
)

weather


#1. hotest day, coldest day
#2. humidity & rainfall relationship 
# 3. regression analysis

paste("Hotest Day :",weather$day[weather$temperature == max(weather$temperature)])
paste("Coldest Day :",weather$day[weather$temperature == min(weather$temperature)])

x<-weather$day
y <- weather$humidity
y1 <- weather$rainfall
plot(x, y,
     col="blue",
     type="b",
     lwd=2,
     xlab= "Day",
     ylab = "Data",
     xlim =c(0,16),
     ylim= c(0,110),
     main="Line Graph for Rainfall and Humidity"
     )
lines(
  x,y1,
  col="red",
  type="b",
  lwd=2
)

legend(
  "topright",
  legend= c("Humidity","Rainfall"),
  fill= c("blue","yellow"),
  pch = 16
)

model <- lm(humidity ~ rainfall ,data= weather)
summary(model)

#----------------------------------------------------------------