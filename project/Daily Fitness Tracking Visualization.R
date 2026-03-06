#Fitness steps vs calories burned

fitness <- data.frame(
  day = 1:11,
  steps =c(3000,3500,4000,5000,6000,7000,8000,8500,9000,10000,11000),
  calories = c(150,170,190,230,260,300,340,360,400,430,470)
)

# plot steps Vs Calories 

plot(fitness$steps , fitness$calories,
     xlab="Fitness Steps",
     ylab= "Calories",
     main = " Fitness Steps vs Calories",
     xlim = c(2500,11500),
     ylim = c(100,500),
     col="blue",
     lwd=2,
     pch=16
     )

#line plot for steps 

plot(fitness$day,fitness$steps,
     type= "l",
     xlab = "Days",
     ylab = "Fitness Steps",
     lwd = 2,
     main = " Fitness Steps",
     col="blue",
     xlim = c(0,12),
     ylim = c(2500,11500)
     )

#bar plot for calories 

barplot(fitness$calories,
        main = " Calories Rate",
        col="green"
        )

#the day with maximum steps 

paste("Maximum Steps in Fitness",max(fitness$steps))

summary(fitness)
