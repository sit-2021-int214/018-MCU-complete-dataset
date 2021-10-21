## Step 6: Data Analysis with Descriptive Statistics


### 1. หาชื่อของหนังที่ทำคะแนน IMDB ได้สูงสุด และคะแนนของหนังดังกล่าว
```{R}
MCU_Data %>% select(Name, IMDB.rating) %>%
slice_max(IMDB.rating)
```
Result:
```{R}
                    Name IMDB.rating
1 Avengers: Infinity War         8.4
2       Avengers:Endgame         8.4
```

### 2. หาชื่อของหนังที่ทำกำไรได้มากกว่าค่าเฉลี่ย
```{R}
*Test*
```
Result:
```{R}
*Test*
```

### 3. หางบประมาณเฉลี่ยของการลงทุนทำหนังในแต่ละ Phase
```{R}
*Test*
```
Result:
```{R}
*Test*
```

### 4. หา Phase ของหนังที่ได้รับรางวัลออสการ์มากที่สุด
```{R}
MCU_Data %>% select(Phase, Oscar.won) %>% group_by(Phase) %>% 
summarise(TotalOscarWon = sum(Oscar.won)) %>%
slice_max(TotalOscarWon)
```
Result:
```{R}
  Phase TotalOscarWon
  <int>         <int>
1     3             3
```

### 5. หารายชื่อของหนังที่ Genre ไม่ใช่ Sci-Fi
```{R}
*Test*
```
Result:
```{R}
*Test*
```

### 6. หา 3 อันดับ ของหนังที่มีคะแนน Metascore สูงสุด พร้อมคะแนนของหนังดังกล่าว
```{R}
MCU_Data %>% select(Name, metascore) %>%
slice_max(metascore, n=3)
```
Result:
```{R}
              Name metascore
1    Black Panther        88
2         Iron Man        79
3 Avengers:Endgame        78
```
