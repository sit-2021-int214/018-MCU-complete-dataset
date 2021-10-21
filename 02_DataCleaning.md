## Step 5: Data Cleaning and Data Transformation

### Changing value types

#### เปลี่ยน Budget, Domestic Gross, Total Gross, Opening Gross จาก character เป็น ***
1. Budget
```{R}
MCU_Data$Budget <- MCU_Data$Budget %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()
```
2. Domestic Gross
```{R}
MCU_Data$Domestic.Gross <- MCU_Data$Domestic.Gross %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()
```
3. Total Gross
```{R}
MCU_Data$Total.Gross <- MCU_Data$Total.Gross %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()
```
4. Opening Gross
```{R}
MCU_Data$Opening.Gross <- MCU_Data$Opening.Gross %>% str_remove_all("\\$") %>% str_remove_all(",") %>% as.numeric()
```

#### Glimpse
```{R}
Rows: 23
Columns: 16
$ Name             <chr> "Iron Man", "The incredible Hulk", "Iron Man 2", "Thor", "Captain America: The first Avenger",~
$ US.release.Date  <chr> "May 2, 2008", "June 13, 2008", "May 7, 2010", "May 6, 2011", "July 22, 2011", "May 4, 2012", ~
$ Director         <chr> "Jon Favreau", "Louis Leterrier", "Jon Favreau", "Kenneth Branagh", "Joe Jhonston", "Joss Whed~
$ Producer         <chr> "Avi Arad and Kevin Feige", "Avi Arad ,Gale Ann Hurd and Kevin Feige", "Kevin Feige", "Kevin F~
$ Duration         <chr> "2h 6min", "1h 52min", "2h 4min", "1h 55min", "2h 4min", "2h 23min", "2h 10min", "1h 52min", "~
$ Genre            <chr> "Action , Adventure, Sci-Fi", "Action , Adventure, Sci-Fi", "Action , Adventure, Sci-Fi", "Act~
$ IMDB.rating      <dbl> 7.9, 6.6, 7.0, 7.0, 6.9, 8.0, 7.1, 6.8, 7.7, 8.0, 7.3, 7.3, 7.8, 7.5, 7.6, 7.4, 7.9, 7.3, 8.4,~
$ metascore        <int> 79, 61, 57, 57, 66, 69, 62, 54, 70, 76, 66, 64, 75, 72, 67, 73, 74, 88, 68, 70, 64, 78, 69
$ Cast             <chr> "Robert Downey Jr. , Gweneth Paltrow , Terrence Howard", "Edward Norton , Liv Tyler , Tim Roth~
$ Budget           <dbl> 1.40e+08, 1.50e+08, 2.00e+08, 1.50e+08, 1.40e+08, 2.20e+08, 2.00e+08, 1.70e+08, 1.70e+08, 1.70~
$ Domestic.Gross   <dbl> 318604126, 134806913, 312433331, 181030624, 176654505, 623357910, 408992272, 206362140, 259746~
$ Total.Gross      <dbl> 585366247, 264770996, 623933331, 449326618, 370569774, 1518812988, 1214811252, 644783140, 7144~
$ Opening.Gross    <dbl> 98618668, 55414050, 128122480, 65723338, 65058524, 207438708, 174144585, 85737841, 95023721, 9~
$ Oscar.Nomination <int> 2, 0, 1, 0, 0, 1, 1, 0, 1, 2, 0, 0, 0, 1, 1, 0, 0, 7, 1, 0, 0, 1, 0
$ Oscar.won        <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0
$ Phase            <int> 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
 ```
จะเห็นว่าตัวเลขค่าเงินทั้ง 4 ตัว ถูกเปลี่ยนจาก character เป็น double

#### Summary
```{R}
     Name           US.release.Date      Director           Producer           Duration            Genre          
 Length:23          Length:23          Length:23          Length:23          Length:23          Length:23         
 Class :character   Class :character   Class :character   Class :character   Class :character   Class :character  
 Mode  :character   Mode  :character   Mode  :character   Mode  :character   Mode  :character   Mode  :character  
                                   
                                   
  IMDB.rating      metascore         Cast               Budget          Domestic.Gross       Total.Gross       
 Min.   :6.600   Min.   :54.00   Length:23          Min.   :130000000   Min.   : 31505828   Min.   :2.648e+08  
 1st Qu.:7.000   1st Qu.:64.00   Class :character   1st Qu.:155000000   1st Qu.:193696382   1st Qu.:6.233e+08  
 Median :7.400   Median :69.00   Mode  :character   Median :170000000   Median :318604126   Median :8.540e+08  
 Mean   :7.443   Mean   :68.65                      Mean   :189826087   Mean   :331841842   Mean   :9.820e+08  
 3rd Qu.:7.850   3rd Qu.:73.50                      3rd Qu.:200000000   3rd Qu.:408538310   3rd Qu.:1.184e+09  
 Max.   :8.400   Max.   :88.00                      Max.   :356000000   Max.   :858373000   Max.   :2.798e+09  
 Opening.Gross       Oscar.Nomination   Oscar.won          Phase      
 Min.   : 55414050   Min.   :0.0000   Min.   :0.0000   Min.   :1.000  
 1st Qu.: 85398076   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:1.500  
 Median :117027503   Median :0.0000   Median :0.0000   Median :2.000  
 Mean   :135096585   Mean   :0.8261   Mean   :0.1304   Mean   :2.217  
 3rd Qu.:176641864   3rd Qu.:1.0000   3rd Qu.:0.0000   3rd Qu.:3.000  
 Max.   :357115007   Max.   :7.0000   Max.   :3.0000   Max.   :3.000  
 ```
จะเห็นว่าตัวเลขค่าเงินทั้ง 4 ตัว สามารถนำไปใช้คำนวณต่อได้
