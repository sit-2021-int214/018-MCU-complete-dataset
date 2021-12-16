# Hypothesis Testing

## Question
จากข้อมูลทั้งหมดที่มีของหนังค่าย MCU ซึ่งมีจำนวนหนังทั้งหมด 23 เรื่อง เราได้ตั้งสมมุติฐานกันว่าคะแนน meta score หนังทั้งหมดของค่าย Marvel Cinematic Universe ส่วนใหญ่จะมีคะแนนที่น้อยกว่า 67 คะแนน โดยที่มีค่าเฉลี่ยของคะแนนอยู่ที่ 68.652 คะแนน และมีส่วนเบี่ยงเบนมาตรฐานอยู่ที่ 7.906

### Step 0 : Assign variables
```
n <- 23
xbar <- 68.652
sd <- 7.906
u0 <- 67
```

### Step 1 : State the Hypothesis
```
Ho: μ <= 67  
Ha: μ > 67
```
### Step 2 : Level of Significance
```
alpha <- 0.05
```

### Step 3 : Test Statistic
```
z <- (xbar - u0)/(sd/sqrt(n)); z
```
Result
```
1.002114
```

### Step 4 : Finding P-Value or Critical Value approach
```
# P-value approach
Pvalue <- pnorm(1-z); Pvalue

# Critical value
Zalpha <- qnorm(alpha)
```
Result
```
P-value = 0.4991566
Critical Value approach = -1.644854
```

### Step 5 : Compare
```
# Using p-value approach
if(Pvalue<=alpha){
  print("Reject H0")
}else{
  print("Accept H0")
}

# Using critical value
if(z<=Zalpha){
  print("Reject H0")
}else{
  print("Accept H0")
}
```
Result
```
P-value approach : "Accept H0"
Critical value approach : "Accept H0"
```

### Step 6 : Conclusion
จากการทดสอบสมมุติฐาน พบว่ายอมรับสมมุติฐานข้างต้น คะแนน meta score หนังทั้งหมดของค่าย Marvel Cinematic Universe ส่วนใหญ่จะมีคะแนนที่น้อย 67 คะแนน
