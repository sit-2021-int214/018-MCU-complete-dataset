library(dplyr)
library(readr)
library(stringr)
library(tidyr)
library(assertive)
library(ggplot2)
# library(DescTools)

TopCompSciBooks <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")
glimpse(TopCompSciBooks)

TopCompSciBooks %>% select(Book_title, Rating)
str_subset(TopCompSciBooks$Book_title, "Web")

# 1.
mean(TopCompSciBooks$Rating)
mean(TopCompSciBooks$Price)

# 2.
TopCompSciBooks %>% select(Type, Price) %>% group_by(Type) %>% 
  summarise(AvgPrice = mean(Price))

# 3.
TopCompSciBooks %>% select(Book_title, Rating) %>%
  slice_max(TopCompSciBooks$Reviews, n=10)

# 4.
TopCompSciBooks %>% select(Book_title, Price) %>%
  filter(str_detect(TopCompSciBooks$Description, tolower("web"))) %>% arrange(desc(Price))

# 5.
TopCompSciBooks %>% select(Book_title, Description, Number_Of_Pages) %>%
  slice_max(Number_Of_Pages , n=10)

# 6.
NoReview <- filter(TopCompSciBooks, Reviews == 0)
count(NoReview)

# Graph_1
Histogram <- ggplot(TopCompSciBooks, aes(x=Type)) + geom_bar()
Histogram

# Graph_2
ScatPlot <- TopCompSciBooks %>% ggplot(aes(x=Number_Of_Pages, y=Price)) +
  geom_point(aes(color=Type))
ScatPlot+geom_smooth()
