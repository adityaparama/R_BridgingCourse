df = data.frame(
  gender=c("M","F","F"),
  height=c("180","160","170"),
  weight=c(75,60,62),
  age=c(40,25,30)
  )

class(df)
is.data.frame(df) #similar to asking a question
is.matrix(df)
df

#choose 1st and 3rd column
dim(df) #dim: row , col
df[,c(1,3)]
df[,c("gender","weight")]
subset(df, gender=="F") #2 equal signs means something equals to something
# == we call it operator
subset(df, gender!="F") #!= is an "not equal to" operator
subset(df, age>=40 & height > 160)
subset(df, age>=40 & height > 160, select=c("weight"))

#How to order and new type of data factor
myvec = c("p","g","g","a","g","p","g","a","g")
# dim (myvec)
# nrow (myvec)
length(myvec)
unique(myvec)
class(myvec)
myvec1 = factor(myvec) #transform character into factor
class(myvec1)
myvec1
myvec1.inc = ordered(myvec1, levels=c("p","a","g"))
myvec1.inc
myvec1.dec = ordered(myvec1, levels=c("g","a","p"))
myvec1.dec


# Missing Value
x = c(1,3,5,2,6,NA)
class(x)
mean(x, na.rm = TRUE) #TRUE also could be written as T "capital T"
miux = (1+3+5+2+6)/5
miux #okay, confirmed that the missing value NA is removed
median (x, na.rm=T)
quantile(x, na.rm=T)
out = summary(x, na.rm=T)
out[2]
is.na(x)
table(x)
x0 = x[-6] #to remove NA. If the location is known
x0
x[!is.na(x)]
!is.na(x)
complete.cases(x)
x[complete.cases(x)]

y = c(1,3,5,2,6,"?") #every character/number inside the double quote considered
# as character
class(y)
y=="?"
y[y=="?"]=NA
y
y0= y[complete.cases(y)] #any cases that are different with this one is not included
class(y)
y1 = as.numeric(y0)
class(y1)

# Generate 1000 random numbers ~N(0,1), store it in xxy
xxy = rnorm(1000,mean=0, sd=1)
hist(xxy, main="HISTOGRAM", col="cyan3",
     xlab="My X Values", ylab="My Count")

# (x,y)
x = seq(-10,10,0.1) #enter the X value, then the y value
y = x^2
plot (x,y)

# Linear Regression
# install.packages("car")
library(car)
data(Duncan)
colnames(Duncan)

# Preliminary data visualization
# we want to know the relation between education (x) to income (y)
plot(Duncan$education, Duncan$income) #income has already been created 
#linear regression model, Y on X

mod1 = lm(Duncan$income~Duncan$education) #Tilda ~ separates y and x  
out = summary(mod1)
out$residuals #we have 45 observations, of course 45 residual
out$coefficients[,3]
out$coefficients[,"t value"]
out$r.squared
out$adj.r.squared
out$fstatistic["value"]

plot(Duncan$education, Duncan$income, 
     main="Income vs Education",
     xlab="Education",
     ylab="Income",
     pch=16, col="cyan3")  #pch: the dot shape, col=color
abline(lm(Duncan$income~Duncan$education), lty=2)
#lty: linetype

#If Statement
balance = 115 #loan balance
employ = "NO"
age = "40"

if ((balance>=50) & (employ=="NO") & (age>=45)) 
  {decision="write-off"
  } else {decision="not write-off"}
decision

x=5
if (x>5){y="x is larger than 5"} else {y="x is not larget than 5"}
y

#Suppose the GPA = 3.79
#Question: GPA>=3.8, then scholarship="YES" else scholarship="NO"
GPA=3.79
if (GPA>=3.80) 
{scholarship="YES"
  } else {scholarship="NO"}
scholarship

#for loop
# i is a name we assign
x = seq(1,10,1)
y = matrix(0,nrow=10,ncol=1) #initiative a container y with 10 rows, 1 column
#data type=matrix
for(i in 1:10){
  y[i]=x[i]^2
}
y
class(y)

# cbind = column bind
# rbind = row bind
x
y
table = cbind(xy)
colnames(table) = c("My X", "My Y")
table

#first need to transpose y (transform from column to row vector)
table2 = rbind(x,t(y)) #t = transpose
rownames(table2) = c("XX", "YY")
table2
