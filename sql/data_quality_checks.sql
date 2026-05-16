USE StudentPerformanceDB;
GO

-- Check total number of students
SELECT COUNT(*) AS total_students
FROM dbo.student_mat;

-- Check table columns and data types
SELECT 
    COLUMN_NAME, 
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'student_mat';

-- Check duplicated rows
SELECT  
    school, sex, age, address, famsize, Pstatus, Medu, Fedu,
    Mjob, Fjob, reason, guardian, traveltime, studytime, failures,
    schoolsup, famsup, paid, activities, nursery, higher, internet,
    romantic, famrel, freetime, goout, Dalc, Walc, health,
    absences, G1, G2, G3,
    COUNT(*) AS duplicate_count 
FROM dbo.student_mat 
GROUP BY  
    school, sex, age, address, famsize, Pstatus, Medu, Fedu,
    Mjob, Fjob, reason, guardian, traveltime, studytime, failures,
    schoolsup, famsup, paid, activities, nursery, higher, internet,
    romantic, famrel, freetime, goout, Dalc, Walc, health,
    absences, G1, G2, G3 
HAVING COUNT(*) > 1;

-- Check missing values in text columns
SELECT 
    SUM(CASE WHEN school IS NULL OR school = '' THEN 1 ELSE 0 END) AS missing_school,
    SUM(CASE WHEN sex IS NULL OR sex = '' THEN 1 ELSE 0 END) AS missing_sex,
    SUM(CASE WHEN address IS NULL OR address = '' THEN 1 ELSE 0 END) AS missing_address,
    SUM(CASE WHEN Mjob IS NULL OR Mjob = '' THEN 1 ELSE 0 END) AS missing_Mjob,
    SUM(CASE WHEN Fjob IS NULL OR Fjob = '' THEN 1 ELSE 0 END) AS missing_Fjob,
    SUM(CASE WHEN guardian IS NULL OR guardian = '' THEN 1 ELSE 0 END) AS missing_guardian
FROM dbo.student_mat;

-- Check grade ranges
SELECT *
FROM dbo.student_mat
WHERE G1 < 0 OR G1 > 20
   OR G2 < 0 OR G2 > 20
   OR G3 < 0 OR G3 > 20;

-- Check age range
SELECT 
    MIN(age) AS min_age,
    MAX(age) AS max_age
FROM dbo.student_mat;
