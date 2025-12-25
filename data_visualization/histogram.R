#=====================================day 3=====================================

#----------------------------------  histogram --------------------------------

marks <- c(45,55,65,60,62,70,72,75,80,85,90)
hist(marks,
     col="blue",
     main="Marks Data",
     xlab="marks",
     ylab="Count",
     border="yellow",
     breaks=5, # used for real time data to reduce noise
     freq = FALSE    # y axis shows the probability like 0.010,0.020
     
     )
lines(
  density(marks),      
  col="red",
  lwd=3
)


#----------------------------------------------TASK -----------

m <- c(45,55,67,78,79,89,90,92,99)

hist(
  m,
  col = rgb(1,0,0,0.3),
  xlim= c(40,100)
)

hist (
  c(50,60,70,80,90,97),
  col = rgb(0,0,1,0.5),
  add = TRUE       # for overlapping 
)

#-----------------------------task----------------------------
stud <- c("Agan","Kural","Paari")
m <- c(98,99,95,94,80)
m1 <- c(85,97,93,100,79)
m3 <- c(55,43,25,79,60)

hist(m, 
     col=rgb(1,0,0,0.5),
     xlim = c(10,110),
     main="Agan Kural paari Mark Analysis",
     xlab="Marks"
   
     )
hist(m1,
     col= rgb(0,1,0,0.5),           # 0.5 is for transperancy
     add=TRUE)
hist(m3,
     col= rgb(0,0,1,0.6),
     add=TRUE)


legend(
  "topleft",
  legend= stud,
  fill =c(rgb(1,0,0,0.5), rgb(0,1,0,0.5),rgb(0,0,1,0.6)),
  pch=16
)


#==================================================================



