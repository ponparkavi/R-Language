x <- c(1,2,3,4,5,6,7)#"Mon","Tue","Wed","Thurs","wed","Fri","Sat"
y1 <- c(40,55,50,55,60,90,100)
y2 <-c(30,35,40,42,50,70,80)
y3 <- c(20,25,30,35,45,65,75)
plot(x,y1,
     main="OTT Day Wise Usage",
     col="red",
     lwd=4,
     lty=2,
     type="l",
     xlim= c(0,9),
     ylim = c(20,100)
     )
grid()
lines(x,y2,
     col="blue",
     lwd=4,
     lty=2,
     xlim= c(0,9),
     ylim = c(20,100)
)
lines(
  x,y3,
  xlim= c(0,9),
  ylim = c(20,100),
  col="green",
  lwd=4,
  lty=2
)
legend(
  "topright",
  legend=c("Netflix","Prime","Hotstar"),
  col=c("red","blue","green"),
  pch=16
)
