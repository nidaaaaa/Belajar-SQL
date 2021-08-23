#Penggunaan fungsi umum skalar matematika
Use DQLab 
Table students 

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
