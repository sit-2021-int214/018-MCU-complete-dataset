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

### 2. หาชื่อของหนังที่ทำกำไรได้มากกว่าค่าเฉลี่ย และกำไรของหนัง จากมากไปน้อย
```{R}
MCU_Data %>% select(Name, Domestic.Gross) %>%
filter(Domestic.Gross < mean(Domestic.Gross)) %>% arrange(desc(Domestic.Gross))
```
#### Result:
```{R}
                                   Name Domestic.Gross
1                              Iron Man      318604126
2                            Iron Man 2      312433331
3  Captain America : The Winter Soldier      259746958
4                       Doctor Strange       232641920
5                  Ant-Man and the Wasp      216648740
6                  Thor: The dark world      206362140
7                                  Thor      181030624
8                               Ant-Man      180202163
9    Captain America: The first Avenger      176654505
10                  The incredible Hulk      134806913
11                        Black Panther       70005956
12                        Thor:Ragnarok       31505828
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
