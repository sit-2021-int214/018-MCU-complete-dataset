# Assignment 2 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.

### Answer

1.) หาค่าสูงสุดของ heart weight ของแมวเพศผู้และค่าเฉลี่ยของ body weight ของแมวเพศผู้
```{R}
max(cats$Hwt[cats$Sex == 'M']) #20.5
mean(cats$Bwt[cats$Sex == 'M']) #2.9
```
คำอธิบาย
```{R}
หาค่าสูงสุดของ heart weight ของแมวเพศผู้โดยใช้คำสั่ง max(cats$Hwt) เพื่อบอกว่าเราใช้ข้อมูลชุดไหนอยู่และตามด้วย $ เพื่อเรียก Colum ที่เราจะหา
และทำการตรวจสอบอีกทีว่าเป็นเพศผู้โดยใช้คำสั่ง [cats$Sex == 'M']
หาค่าเฉลี่ยของ body weight ของแมวเพศผู้โดยใช้คำสั่ง mean(cats$Bwt)
```
2.) หาสูงสุดของ span of writing hand ของนักเรียนหญิง
```{R}
max(survey$Wr.Hnd[survey$Sex == 'Female'],na.rm = TRUE )
```
คำอธิบาย
```{R}
หาสูงสุดของ span of writing ของนักเรียนหญิงโดยใช้คำสั่ง max(survey$Wr.Hnd) และเจาะจงว่าเป็นเพศหญิงโดยคำสั่ง [survey$Sex == 'Female']
จากนั้นใช้คำสั่ง na.rm = TRUE เพื่อให้สามารถหาค่าเฉลี่ยจากความสูงทั้งหมดได้โดยที่ไม่ติดค่า NA ที่มีอยู่
```
3.) 
### Team: 018-Thailand-Largest-Company
| No. | Name              | Student ID   |
|:---:|-------------------|--------------|
|  1  | นาย โชติพัฒน์ เพียรพัฒนาวิทย์    | 63130500025  |
|  2  | นาย นฤบดินทร์ อะมีนี   | 63130500067  |
|  3  | นาย พลวัฒน์ นารานิทัศน์   | 63130500071 |

