#Penggunaan fungsi umum skalar matematika
#Use DQLab 
#Table students 

#ABS()
SELECT StudentID, FirstName, LastName, Semester1, Semester2, 
ABS(MarkGrowth) as MarkGrowth 
FROM students;

#Ceiling()
SELECT StudentID, FirstName, LastName, 
CEILING(Semester1) as Semester1, CEILING(Semester2) as Semester2, 
MarkGrowth FROM students;

#Floor()
SELECT StudentID, FirstName, LastName, 
FLOOR(Semester1) as Semester1, FLOOR(Semester2) as Semester2, 
MarkGrowth FROM students;

#Round()
SELECT StudentID, FirstName, LastName, 
ROUND(Semester1,1) as Semester1, ROUND(Semester2,0) as Semester2, 
MarkGrowth FROM students;

#SQRT()
SELECT StudentID, FirstName, LastName, 
SQRT(Semester1) as Semester1, Semester2, 
MarkGrowth FROM students;

#MOD() & EXP()
SELECT StudentID, FirstName, LastName, 
MOD(Semester1,2) as Semester1,Semester2,
EXP(MarkGrowth) FROM students;

Fungsi Text :

#Concat()
SELECT StudentID, CONCAT(FirstName, LastName) as Name, Semester1, Semester2, 
MarkGrowth FROM students;

#Substring_index
SELECT StudentID, 
SUBSTRING_INDEX(Email,'@',1) as Name
FROM students;

#Substr()
SELECT StudentID, 
SUBSTR(FirstName, 2, 3) as Initial
FROM students;

#Length()
SELECT StudentID, FirstName, 
LENGTH(FirstName) as Total_Char
FROM students;

#Replace()
SELECT StudentID, Email, 
REPLACE(Email, 'yahoo', 'gmail') as New_Email
FROM students;

#Upper() & Lower()
SELECT StudentID, 
UPPER(FirstName) as FirstName,
LOWER(LastName) as LastName
FROM students;

Fungsi aggregate :

#Sum()
SELECT SUM(Semester1) as Total_1, SUM(Semester2) as Total_2
FROM students;

#Count()
SELECT COUNT(FirstName) as Total_Student
FROM students;

#AVG()
SELECT AVG(Semester1) as AVG_1, AVG(Semester2) as AVG_2
FROM students;

#Min() & Max()
SELECT MIN(Semester1) as MIN1, MAX(Semester1) as MAX1, MIN(Semester2) as MIN2, MAX(Semester2) as MAX2
FROM students;

#Penggunaan Group By
#Use DQLab 
#Table data_penjualan

#Single column
SELECT province,
COUNT(DISTINCT order_id) as total_order,
SUM(item_price) as total_price
FROM sales_retail_2019
GROUP BY province;

#Multi Column
SELECT province, brand,
COUNT(DISTINCT order_id) as total_order,
SUM(item_price) as total_price FROM sales_retail_2019
GROUP BY province, brand;

#Aggregate & Group By 
SELECT province, COUNT(DISTINCT order_id) AS total_unique_order,
SUM(item_price) AS revenue FROM sales_retail_2019
GROUP BY province;

#Penggunaan Case...When 
#table sales_retail_2019
SELECT MONTH(order_date) AS order_month, SUM(item_price) AS total_price, 
CASE  
    WHEN sum(item_price) >= 30000000000 THEN 'Target Achieved'
    WHEN sum(item_price) <= 25000000000 THEN 'Less performed'
    ELSE 'Follow Up'
END as remark
FROM sales_retail_2019
GROUP BY MONTH(order_date);
