#========================================== Regression =====================

#------- relation between 2 variables -----

# in graph , it gives curve or line 


#------> simple =>   1 i/p  =  1 o/p

#------> multi  =>  many i/p = 1 o/p 

#------> non linear => curved ship

#------> logistic  => classify( yes / no ) (used in ML)



#linear Regression:

#                x   ---->  Y

#             cause        effect


#------------------------------mobile sales--------------------------------


ads <- c(10,20,30,40,50)      #consider as 1000's

sales <- c(200,350,500,620,700)

data <- data.frame(ads,sales)         #convert into dataframe

model <- lm(sales ~ ads , data = data)  #lm() => linear model function
summary(model)

plot(ads,sales,
     pch = 16,
     col = "blue",
     main = "Ads vs Sales",
     xlab = "Ads in thousands",
     ylab = "Phones Sold "
     )
abline(
  model,
  col = "red",
  lwd = 2
)


#to predict:

predict(model, data.frame(ads=35))         #output: 537.5 

# for ads= 35 , 537.5 unit phone sold 



#=========== real time data ( Netflix watch time Vs Snacks eaten)======


netflix_watch_time <- c(1,2,3,4,5,6,7)

snacks_eaten <- c(1,2,3,4,5,6,7)
 
data <- data.frame(netflix_watch_time,snacks_eaten)
data

plot(netflix_watch_time, snacks_eaten,
     col = "blue",
     main = "Netflix watch time Vs Snacks eaten",
     lwd = 3)

model <- lm(snacks_eaten ~ netflix_watch_time, data = data )

predict(model, data.frame(netflix_watch_time=35))

abline(
  model,
  col="red",
  lwd=2
)

#===============================================================================

#                    MULTIPLE REGRESSION

#real time analytics
#
#           X1, X2, X3 --> Y
#
#    phone sales:
#                   ads, discount, foot falls ==> phone Sales 
#

ads <- c(10,20,30,40,50)
discount <- c(2,4,6,8,10)
visits <- c(100,150,200,260,300)
sales <- c(200,350,500,20,700)

data <- data.frame(ads,sales,discount,visits)
data

m_model <- lm(sales ~ ads+discount+visits, data = data)
summary(m_model)

# Residual: each and every time how to predict , least value= perfect prediction   
# ** ==> affecting factor
# if 2 variable in one-to-one relation , multiple regression automatically drop one variable => multi collinearity (function called)

#p-value => on the scale of 1 to 10 => says that whether the model is significant or not 

#main => Residual standard error: 29.28



#=================== non-linear regression===========================================


#  Dunning-kruger curve => (framework or psycological things ) (peak, value of despair,plateau of sustainability)
#that curve called => slope of enlight net 
#
#
#non-linear:
#  to predict the saturation point
# saturation point was predicted by the up and downs in the curve

# Types:
#
#       --> Polynomial regression
#       --> log regression
#


#polynomial Regression:

# that shape matters a lot 


ads <- c(5,10,20,30,40,50)
sales <- c(120,220,380,520,610,650)

model_poly <- lm( sales ~ poly(ads,2),data = data.frame(ads,sales))     # 2<- smoothness(2 degree)
summary(model_poly)

plot(
  ads,sales,
  pch=16,
  col="blue",
  main="Ads vs Sales",
  xlab="Ads",
  ylab="Phones Sold"
  
)

curve(predict(model_poly,data.frame(ads= x)),
              add=TRUE,
              col="red",
              lwd=2
      )



# log regression:

# based on the data, curve comes(actual data), curve doesn't matter {deterministic}

ads <- c(5,10,20,30,40,50)
sales <- c(120,220,380,520,610,650)

model_log <- lm( sales ~ log(ads)) # 2<- smoothness(2 degree)
summary(model_log)

plot(
  ads,sales,
  pch=16,
  col="blue",
  main="Ads vs Sales",
  xlab="Ads",
  ylab="Phones Sold"
  
)

curve(predict(model_log,data.frame(ads= x)),
      add=TRUE,
      col="red",
      lwd=2
)

#=================================================================================

# --------------  Logistic Regression -----------------------------------


# linear , multiple, non-linear => numeric data

# logistic => yes/ No ( ask questions) 


ads <- c(10,20,30,40,50)
sales <- c(200,350,500,620,700)

#if(sales > 500){
#  1
#}esle{
#  0
#}
 
#------or--------

high_sales <- ifelse(sales > 500 ,1,0)
data <- data.frame(ads,sales,high_sales)
data

model_logistic <- glm(high_sales ~ ads , data = data, family = binomial())  # Generalized Linear Model

#binomial() refers logistic regression

summary(model_logistic)

ifelse(predict(model_logistic,
               data.frame(ads=35),
               type = "response") > 0.5 ,"Yes","No")

plot(ads,high_sales,
     pch=16,
     col="blue",
     xlab="ads",
     ylab="High Sales(0/1)",
     main="Logistic Regression Curve")
curve(
  predict(model_logistic,
          data.frame(ads=x),
          type = "response"),
  col="red",
  add=TRUE,
  lwd=2
)





#===========================================================================

