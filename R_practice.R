c(seq(1, 50, by = 3), seq(1, 50, by = 5), seq(1, 50, by = 10))


#1.vector
vector_name <- c(element1, element2, element3, ...)

num_vector <- c(1, 2, 3, 4, 5)
char_vector <- c("apple", "banana", "cherry")
logical_vector <- c(TRUE, FALSE, TRUE)
complex_vector <- c(1+2i, 3+4i, 5+6i)

#2.List
list_name <- list(object1, object2, object3, ...)

my_list <- list(num_vector, char_vector)
my_list
my_list_2 <- list(matrix(1:4, nrow = 2), my_list)
my_list_2

#3.Matrices
matrix_name <- matrix(data, nrow, ncol, byrow)

my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
my_matrix
my_matrix_2 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = TRUE)
my_matrix_2

#4.Array
array_name <- array(data, dim)

my_array <- array(1:24, dim = c(2, 3, 4))
my_array

#5.Factors
factor_name <- factor(vector, levels, labels)

my_factor <- factor(c("low", "medium", "high"), levels = c("low", "medium", "high"), labels = c("L", "M", "H"))
my_factor

#6.Data Frame
df <- data.frame(col1 = c(value1, value2, ...),
                 col2 = c(value1, value2, ...),
                 coln = c(value1, value2, ...))

df1 <- data.frame(name = c("John", "Jane", "Mike"),
                 age = c(25, 30, 27),
                 salary = c(50000, 60000, 55000))
print(df1)


# create data frame
df <- data.frame(
  name = c("John", "Sara", "Emily", "David", "Lisa"),
  age = c(28, 32, 25, 36, 29),
  gender = c("M", "F", "F", "M", "F")
)

#to fetch a specific row, to delete a row
df[3, ] ; df[-3, ]
#to fetch a specific column, to delete a column
df[ ,2] "or"; df$gender ; df[ ,-2]
#to add column
df$salary <- c(50000, 60000, 45000, 75000, 55000)
#to add row
new_row <- data.frame(name = "Tom", age = 31, gender = "M", salary = 65000)
df <- rbind(df, new_row)


number <- 7
if(number > 0) {
  print("The number is positive")
} else {
  if(number < 0) {
    print("The number is negative")
  } else {
    print("The number is zero")
  }
}



input_value <- readline("Enter a value: ")
if (grepl("^[a-zA-Z]+$", input_value)) {
  print("The entered value is an alphabet.")
} else if (grepl("^[0-9]+$", input_value)) {
  print("The entered value is a number.")
} else {
  print("The entered value is a special character.")
}


# break statement is used to break out of a loop, whereas next statement is used to skip to the next iteration of a loop

# Example for Break
for (i in 1:10) {
  if (i == 6) {
    break
  }
  print(i)
}

#Example for Next
for (i in 1:10) {
  if (i == 3 || i == 7) {
    next
  }
  print(i)
}


x <- c(1, 5.6, 3, 10, 3.5, 5)
rev_x <- rev(x)
print(rev_x)


get_mode <- function(x) {
  x <- na.omit(x)
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

x <- c('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')
get_mode(x)


library(dplyr)
filter_setosa <- function() {
  iris %>% 
    filter(Species == "setosa")
}

data(iris)
filter_setosa()


library(dplyr)
iris_new <- iris %>% 
  mutate(Means_of_obs = rowMeans(.[1:4]))

head(iris_new)


library(dplyr)
data(iris)
versicolor_data <- iris %>% 
  filter(Species == "versicolor") %>% 
  select(Sepal.Length, Sepal.Width)
head(versicolor_data)

install.packages("ggplot2")
library(ggplot2)
data(mtcars)

#1.Scatter Plot:
ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, size=hp)) +
  geom_point()
  labs(title="Scatter Plot of Weight vs. MPG by Cylinders and Horsepower",
       x="Weight (1000 lbs)", y="Miles per Gallon",
       color="Cylinders", size="Horsepower")

#2.Boxplot:
ggplot(mtcars, aes(x=factor(cyl), y=mpg, fill=factor(cyl))) +
  geom_boxplot() +
  labs(title="Boxplot of MPG by Cylinders",
        x="Cylinders", y="Miles per Gallon",
        fill="Cylinders")

#3.Histogram:
ggplot(mtcars, aes(x=mpg, fill=factor(cyl))) +
  geom_histogram(binwidth=3, alpha=0.6, position="identity") +
  labs(title="Histogram of MPG by Cylinders",
       x="Miles per Gallon", y="Count",
       fill="Cylinders")

#4.Line Graph:
ggplot(mtcars, aes(x=wt, y=mpg, color=factor(cyl))) +
  geom_smooth(method="lm", se=FALSE, size=1.2) +
  labs(title="Line Graph of Weight vs. MPG by Cylinders",
       x="Weight (1000 lbs)", y="Miles per Gallon",
       color="Cylinders")

#5.Bar Graph:
ggplot(mtcars, aes(x=factor(cyl), fill=factor(gear))) +
  geom_bar(position="dodge") +
  labs(title="Bar Graph of Cylinders by Gears",
       x="Cylinders", y="Count",
       fill="Gears")





























