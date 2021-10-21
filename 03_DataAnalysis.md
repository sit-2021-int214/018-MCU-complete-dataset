## Step 6: Data Analysis with Descriptive Statistics


### 1. หาชื่อของหนังที่ทำคะแนน IMDB ได้สูงสุด และคะแนนของหนังดังกล่าว
```{R}
MCU_Data %>% select(Name, IMDB.rating) %>%
slice_max(IMDB.rating)
```
#### Result:
```{R}
                    Name IMDB.rating
1 Avengers: Infinity War         8.4
2       Avengers:Endgame         8.4
```

### 2. หาชื่อของหนังที่ทำกำไรโดยรวมได้มากกว่าค่าเฉลี่ย และกำไรของหนัง จากมากไปน้อย
```{R}
MCU_Data %>% select(Name, Total.Gross) %>%
filter(Total.Gross < mean(Total.Gross)) %>% arrange(desc(Total.Gross))
```
#### Result:
```{R}
                                   Name Total.Gross
1                 Spider-Man:Homecoming   880166924
2        Guardians of the Galaxy Vol. 2   863756051
3                         Thor:Ragnarok   853977126
4               Guardians Of the Galaxy   772776600
5  Captain America : The Winter Soldier   714421503
6                       Doctor Strange    677718395
7                  Thor: The dark world   644783140
8                            Iron Man 2   623933331
9                  Ant-Man and the Wasp   622674139
10                             Iron Man   585366247
11                              Ant-Man   519311965
12                                 Thor   449326618
13   Captain America: The first Avenger   370569774
14                  The incredible Hulk   264770996
```

### 3. หางบประมาณเฉลี่ยของการลงทุนทำหนังในแต่ละ Phase
```{R}
MCU_Data %>% select(Phase, Budget) %>% group_by(Phase) %>% 
summarise(AvgBudget = mean(Budget))
```
#### Result:
```{R}
  Phase  AvgBudget
  <int>      <dbl>
1     1 166666667.
2     2 181666667.
3     3 206909091.
```

### 4. หา Phase ของหนังที่ได้รับรางวัลออสการ์มากที่สุด
```{R}
MCU_Data %>% select(Phase, Oscar.won) %>% group_by(Phase) %>% 
summarise(TotalOscarWon = sum(Oscar.won)) %>%
slice_max(TotalOscarWon)
```
#### Result:
```{R}
  Phase TotalOscarWon
  <int>         <int>
1     3             3
```

### 5. หารายชื่อของหนังที่ Genre ไม่ใช่ Sci-Fi
```{R}
MCU_Data %>% select(Name, Genre) %>%
filter(str_detect(Genre, 'Sci-Fi') == FALSE)
```
#### Result:
```{R}
                            Name                       Genre
1                           Thor Action , Adventure, Fantasy
2           Thor: The dark world Action , Adventure, Fantasy
3        Guardians Of the Galaxy  Action, Adventure , Comedy
4                        Ant-Man  Action, Adventure , Comedy
5                Doctor Strange  Action , Adventure, Fantasy
6 Guardians of the Galaxy Vol. 2  Action, Adventure , Comedy
7                  Thor:Ragnarok  Action, Adventure , Comedy
8           Ant-Man and the Wasp  Action, Adventure , Comedy
9               Avengers:Endgame  Action , Adventure , Drama
```

### 6. หา 3 อันดับ ของหนังที่มีคะแนน Metascore สูงสุด พร้อมคะแนนของหนังดังกล่าว
```{R}
MCU_Data %>% select(Name, metascore) %>%
slice_max(metascore, n=3)
```
#### Result:
```{R}
              Name metascore
1    Black Panther        88
2         Iron Man        79
3 Avengers:Endgame        78
```
