study <- data.frame(
	student =paste("S",1:10,sep=" "),
	study_hours= c(1,2,2.5,3,4,5,6,6.5,7,8),
	marks = c(35,40,45,50,60,68,75,78,85,92)
);

plot(study$study_hours,study$marks,
     main="Study Hours Vs Marks",
     xlab=" Study Hours ",
     ylab = " Marks ",
     col="blue",
     pch=16,
     lwd=2 )

plot(study$marks,
     main="Marks Progression",
     ylab="Marks",
     xlab="Students",
     lwd=3,
     type="b",
     col ="blue",
     xlim= c(0,11))
barplot(
  study$marks
)
