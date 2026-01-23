ott <- data.frame(
  day = 1:12,
  watch_hours = c(1.5,2,2.2,3,3.5,4,4.2,5,5.5,6,6.5,7)
)

# plot watch hours over days

plot(ott$day , ott$watch_hours,
     main = "Watch Hours Over Days",
     xlab = "Days",
     ylab = "Watch Hours",
     xlim = c(0,13),
     ylim = c(0,9),
     col = "blue",
     pch = 16)


# draw a line plot showing trend

plot(
  ott$day,ott$watch_hours,
  main = "OTT Watch Hours Trend",
  xlab = "Day",
  ylab = " Watch Hours",
  xlim = c(0,13),
  ylim = c(0,10),
  type = "l",
  col = "blue",
  lwd = 2 
)
points(ott$day, ott$watch_hours, pch = 16)



# create a bar plot for watch hours 
barplot(ott$watch_hours,names.arg = ott$day,
        main = "OTT Watch Hours ",
        xlab = "Day",
        ylab = " Watch Hours",
        col = "blue",
        ylim = c(0,9),
        xlim = c(0,15)
        
        )
