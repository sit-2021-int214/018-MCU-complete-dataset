## Step 1: Define a question

### Questions
1. หาค่าสูงสุดของคะแนน IMDB ของ MCU movies
2. หางบประมาณเฉลี่ยของการลงทุนในกาารทำหนังในแต่ละ Phase
3. เปรียบเทียบว่า Phase ไหนได้รับรางวัลออสก้ามากกว่ากัน
4. หาจำนวนของหนังที่มีบทวิจารณ์มากกว่าคะแนนเฉลี่ย

## Step 2: Search dataset from Kaggle
Datasets from: [MCU Complete Dataset](https://www.kaggle.com/rachit239/mcu-complete-dataset)

## Step 3: Loading Library and Dataset
```{R}
# Install Libraries

# Download Dataset
MCU_Data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/018-MCU-complete-dataset/master/mcu%20dataset.csv")
```

## Step 4: Data Exploration
จากการเช็คข้อมูลผ่านคำสั่ง
```{R}
glimpse(MCU_Data)
```
ผลที่ออกมาจะได้
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
$ Budget           <chr> "$140,000,000", "$150,000,000", "$200,000,000", "$150,000,000", "$140,000,000", "$220,000,000"~
$ Domestic.Gross   <chr> "$318,604,126", "$134,806,913", "$312,433,331", "$181,030,624", "$176,654,505", "$623,357,910"~
$ Total.Gross      <chr> "$585,366,247", "$264,770,996", "$623,933,331", "$449,326,618", "$370,569,774", "$1,518,812,98~
$ Opening.Gross    <chr> "$98,618,668", "$55,414,050", "$128,122,480", "$65,723,338", "$65,058,524", "$207,438,708", "$~
$ Oscar.Nomination <int> 2, 0, 1, 0, 0, 1, 1, 0, 1, 2, 0, 0, 0, 1, 1, 0, 0, 7, 1, 0, 0, 1, 0
$ Oscar.won        <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0
$ Phase            <int> 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
```
จะเห็นว่าชุดข้อมูลนี้ประกอบไปด้วยข้อมูล 16 ชนิด
- `Name` คือ ชื่อหนัง(character)
- `US release Date` คือ วันที่เปิดฉายใน US(character)
- `Director` คือ ชื่อผู้กำกับ(character)
- `Producer` คือ ชื่อผู้ผลิต(character)
- `Duration` คือ ระยะเวลา(character)
- `Genre` คือ ประเภทของหนัง(character)
- `IMDB rating` (double)
- `metascore` (integer)
- `Cast` คือ ชื่อนักแสดง(character)
- `Budget` คือ ทุนสร้าง(character)
- `Domestic Gross` คือ รายได้ในประเทศ US(character)
- `Total Gross` คือ รายได้รวม(character)
- `Opening Gross` คือ รายได้สัปดาห์เปิดฉาย(character)
- `Oscar Nomination` คือ จำนวนครั้งที่มีการเสนอชื่อชิงรางวัล Oscar(integer)
- `Oscar won`  คือจำนวนครั้งที่ได้รับรางวัล Oscar(integer)
- `Phase` (integer)
