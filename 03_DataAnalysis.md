## Step 6: Data Analysis with Descriptive Statistics


### 1. หาชื่อของหนังที่ทำคะแนน IMDB ได้สูงสุด และคะแนนของหนังดังกล่าว
```{R}
*Test*
```
Result:
```{R}
*Test*
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
*Test*
```
Result:
```{R}
*Test*
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
