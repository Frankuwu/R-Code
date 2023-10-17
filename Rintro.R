"Hello World"
'hello world'
## to execute ctrl+enter or alt+enter

10
5 10 20 # will raise error

#Variable
name1 = 'Franku'
name1
name2 = "Sushi"
name2
class(name2)

age = 25
age
class(age)

paste("Joji is", name1) # concatenation/combine text with paste

# assign same values to multiple variables in one line
var1 = var2 = var3 = "Orange"

# Legal Variables Names ( Case sensitive )

myvar = "abc"
my_var = "qwerty"
MyVar = "xyz"
MYVAR = "jkl"
myvar2 = "Mallu"
this.year = 2023

# Illegal variable names

2myvar = "a"
my-var = 's'
my var = "s"
_my_var = 'a'
my_v@r = 's'
TRUE = 's'   # reserved keyword : TRUE, FALSE

# data types in R

x = 10
a = 11.5
class(x)  # Numeric / FLOAT DECIMAL ALL         / POSITIVE 
class(a)  # numeric / ARE CONSIDERED AS NUMERIC / NEGATIVE

y = 1000L
class(y)  # Integer / ADD 'L' AT LAST AND IT IS INTEGER WTF ?!

z = "var"
class(z)  # Character

q = TRUE  # or T , FALSE, F
true = "mno"
class(q)  # Logical or Boolean
class(true) # case sensitive

3 > 5
5>3
5==5 # comparison operator
1 != 6

x = c(2,3,4)
y = c(3,2,1,5)

x+y

price = c(2999, 499, 29, 9, 9999, 19999)
price[price>1000]

sort(price)

sort(price, decreasing = T)

length(price)

# data frames
a = c(10, 20, 30, 40, 50)
b = c("a","b","c","d","e")

data.frame(a,b)
df = data.frame(a,b)

View(df)

df1 = data.frame(
  training = c("Strength", "Stamina", "Other"),
  Pulse = c(100,150,120),
  Duration = c(60,30,45)
)

df1

df1[1]

df1[,1]
df1[1,1]
df1[,2]
df1[1,]

df1$Duration
df1$training

# food data frame
food = data.frame(
  name=c("pav bhaji","paneer masala","kaju katli","butter chicken",
         "gulab jamun","Biryani"),
  type=c("veg","veg","veg","non veg","veg","non veg"),
  taste=c("spicy","spicy","sweet","spicy","sweet","spicy"),
  price=c(120,235,420,340,90,315)
)

# one condition # one filter
food[food$type=="veg",]  # row with food type-veg
food[food$type=="veg",4] # will give only price # i.e: 4th column

food[food$type=="non veg",c(1,4)]
food[food$type=="non veg",c("name",'price')]

# two condition # two filter
food[food$price<300 & food$taste=="spicy",]
food[food$price<300 | food$taste=="spicy",]

food[food$type=='non veg',c('name','price')]

# Orange, mtcars are built in data set
Orange
mtcars

dim(mtcars) # no of rows and no of columns # dimension of the data set
nrow(mtcars) #no of rows
ncol(mtcars) #no of columns
str(mtcars) # structure - col names data type and values
summary(mtcars) # discriptive analysis

help(mtcars) #info of dataset
mtcars$cyl # individual col cyl values
table(mtcars$cyl) # distinct of count of values in cyl column
mtcars$gear
table(mtcars$gear) # distinct count of values

#US arrests - another data set
USArrests
help("USArrests")
View(USArrests) # data set opens in new windows in table structure 

head(USArrests) #by default shows first 6 records
tail(USArrests) #by default shows bottom 6 records
head(USArrests,8) # custom no of top records 
tail(USArrests,10)

# check all available dataset in R studio # by default
data()






