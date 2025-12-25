#-----------------------input---------------------------------------------


name <- readline("enter your name: ")
name

age<- as.integer(readline("enter your age:"))
age

nums <- scan()  # multi-line input


#----------------------------functions--------------------------------------


sum<- function(a,b){             #arguments
  return(a+b)
}
sum(2,3)                          #parameters


#-----------------------------------task 1----------------------------------


department <- function(){
  print("Welcome to AI&DS....!!!")
}
department()


#-----------------------task2----------------------------------------------


name <- function(a){
  paste(a,"kapoor")
}

name("Ranbir")
name("Kareena")
name("Prasanna")
 

#----------------------task3---------------------------------------------


name <- function(a,b){
  paste(a,b)
}
name("rithika", "kanakaraj")
name("anushka", "sharma")


#------------------------------------------------------------------------------

                       #----scope of variable--------


mc <<- "Iron man"                             #global declaration
marvel <- function(){
  
  mc <-"spiderman"                            #local declaration
  paste("strongest character is",mc)
}
marvel()
print(mc)


#___________________________________________________________________________

# other than true or false => NA(not available )(dangerous)

x==NA
is.na(x)
b
is.na(b)


#---------------------------------------------------------------------------
  
