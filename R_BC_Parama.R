remove(data)
rm(list=ls())

# = and <- are both assignment operators. 
# small and capital letters are different things. Case sensitive
a=2
b<-1
A=3
# Calculator
c = a+b
#the result would be in console
d = a-b
e = a*b
f = a/b
#console is to check whether our code is correct or not
g = a+b0

# Basic Functions
n1 = sqrt(a)
n2 = log(10)
n3 = exp(1) # exponential e^1
n4 = log(n3) # log = natural logarithm with base e
n5 = log2(2) # log with base 2
n6 = log(2, base=2) # things inside the bracket is option.
n7 = sin(pi)
n8 = pi
nx = log10(10) 

# Useful Functions
# Create a Linear Time Trend (1,..., 10)
n9 = seq(from = 1, to = 10, by = 1)
n9 # numeric (num)
# Create a Linear Time Trend (2, 4, 6, ..., 20)
n10 = seq(from=2, to = 20, by = 2)
n10
# other method =seq(2,20,2), the order should be right & be remembered
n11 = seq(20,2,-2)
n12 = c(1:10) #another method only with 1 letter. c : collector
#colon(:) means to
n12 # integer (int)
#different function needs different data type

# Use n9=(1, 2,..,10)
mean(n9)
sd(n9)
var(n9)
sqrt(var(n9))

#Introduction of Matrix
#What is the data type of n9
class(n9)
m9 = as.matrix(n9) #transform numeric to matrix
class(m9)
d9 = as.data.frame(n9) #Transform numeric to data.frame
class(d9)
View(n9) #first letter is capital

mean(m9)
apply(m9, 2, mean) # "2" is the coloumn (second dimension)

#subset a matrix
m9[2] #square bracket to subset an object
m9[2:5]
data = c(10, 20, 30, 40, 50, 60)
m = matrix(data, nrow=2, ncol=3, byrow = FALSE)
# "," separates row from column
m[1:2,2] # [(1 to 2 row), 2nd colomn]
m[,2] # [all rows, 2nd column] = [__,2]
m[1,]
m[1, 2:3]
m[1,1]
m[2,3]
m[,3]

#row Sums/Means
rs = rowSums(m)
rs
rm = rowMeans(m)
rm

#Column Sums/Means
cs = colSums(m)
cs
cm = colMeans(m)
cm
dim(m) #dimmension, row by col
nrow(m)
ncol(m)
m[1, 2:ncol(m)]

ss = seq(1, 60, 1) #index assigned to students
# Training Sample with 20 students
set.seed(2019) #if we use the same seed, the random number generated
#would be the same
i = sample (ss, 20)
i
ss[i]
# Testing sample with 40 students
ss[-i]

# Let's create a data frama that contains index, income
m = rnorm(60, mean = 16000, sd=100)
data = data.frame(index=ss, income=m)
#Training Sample
train = data[i, ]
#Testing Sample
test = data[-i, ]

miu.train = colMeans(train)[2]
miu.train
miu.test = colMeans(test)[2]
miu.test

#Create Characters
cousins = c("Amy", "Bob", "Carmen", "David", "Eva")
class(cousins)
cousins [4:5]
cousins [-5]
data = cousins [-1]
cousins ["Carmen"] 
cousins [c(2,4)]
cousins [c(4,2)]

data = data.frame(index=ss, income=m)
data[,2]
data["income"]