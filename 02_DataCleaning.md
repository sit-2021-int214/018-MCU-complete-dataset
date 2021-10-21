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
