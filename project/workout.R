study <- data.frame(
  student = paste("S",1:10,sep =" "),
  study_hours = c(1,2,3,4,5,6,7,8,9,10),
  marks = c(35,40,45,50,60,68,75,78,85,92)
)

#plot study hours vs marks

plot(
  study$study_hours,study$marks,
  main ="Study hours Vs Marks",
  col ="blue",
  type ="b",
  lwd=2,
  xlab="Study Hours",
  ylab ="Marks",
  xlim = c(0,12),
  ylim = c(0,110)
)


barplot(study$marks,names.arg=study$student,
        main="Marks",
        col="blue",
        ylim=c(0,110),
        xlim=c(0,11),
        width=0.8)

plot(study$marks,
     col="navy",
     ylab="marks",
     main="Mark Progression",
     type="b",
     plt=15,
     lwd=1.5)

c <- mean(study$marks)
paste("Average marks: ",c)

hist(study$marks,
     main="Histogram of marks",
     xlab='Marks',
     col="pink"
     
     )
m<-lm(study$study_hours ~ study$marks)
m
summary(m)

