# Icecream Sales Vs Temperature

icecream <- data.frame(
  Day = 1:10,
  Temperature = c(28,29,30,31,32,33,34,35,36,37),
  Sales = c(120,135,150,165,180,205,230,260,290,320)
)

#task1: plot Temperature Vs Sales
plot(icecream$Temperature , icecream$Sales,
     xlim = c(26,39),
     ylim = c(70,350),
     main = "Temperature Vs Sales",
     xlab = "Temperature",
     ylab = "sales",
     col = "black",
     pch = 16)

#task 2: Draw line plot for sales

plot(icecream$Day, icecream$Sales,
     type = "l",
     col = "blue",
     xlim = c(1,11),
     ylim = c(80,350),
     main = "Line plot for Sales of IceCream",
     xlab = "Day",
     ylab = "Sales",
     lwd = 2
     )

#task 3: Create Barplot for Sales

barplot(icecream$Sales,names.arg =icecream$Day,
        main = "Sales Prediction (Sales per Day)",
        xlab = "Day",
        ylab = "Sales",
        col = "skyblue"
        )

#task 4 : find average Sales

avg_sales <- mean(icecream$Sales)
cat("Average Sales :",avg_sales)

