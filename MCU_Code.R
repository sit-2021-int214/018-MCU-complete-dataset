install.packages("dplyr")
install.packages("readr")
install.packages("stringr")

library(dplyr)
library(readr)
library(stringr)

MCU_Data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/018-MCU-complete-dataset/master/mcu%20dataset.csv")

MCU_Data$Budget <- MCU_Data$Budget %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()
MCU_Data$Domestic.Gross <- MCU_Data$Domestic.Gross %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()
MCU_Data$Total.Gross <- MCU_Data$Total.Gross %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()
MCU_Data$Opening.Gross <- MCU_Data$Opening.Gross %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()

glimpse(MCU_Data)
summary(MCU_Data)

MCU_Data %>% select(Name, IMDB.rating) %>%
  slice_max(IMDB.rating)

MCU_Data %>% select(Name, Total.Gross) %>%
  filter(Total.Gross < mean(Total.Gross)) %>% arrange(desc(Total.Gross))

MCU_Data %>% select(Phase, Budget) %>% group_by(Phase) %>% 
  summarise(AvgBudget = round(mean(Budget), digits = 0))

MCU_Data %>% select(Phase, Oscar.won) %>% group_by(Phase) %>% 
  summarise(TotalOscarWon = sum(Oscar.won)) %>%
  slice_max(TotalOscarWon)

MCU_Data %>% select(Name, Genre) %>%
  filter(str_detect(Genre, 'Sci-Fi') == FALSE)

MCU_Data %>% select(Name, metascore) %>%
  slice_max(metascore, n=3)
