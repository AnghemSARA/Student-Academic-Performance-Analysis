USE StudentPerformanceDB;
GO
-- Total number of students
SELECT COUNT(*) AS total_students
FROM dbo.vw_student_analysis;

-- Pass and fail distribution
SELECT 
    result,
    COUNT(*) AS number_of_students,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dbo.vw_student_analysis), 2) AS percentage
FROM dbo.vw_student_analysis
GROUP BY result;

-- Students by performance level
SELECT 
    performance_level,
    COUNT(*) AS number_of_students
FROM dbo.vw_student_analysis
GROUP BY performance_level
ORDER BY number_of_students DESC;

-- Average final grade by study time
SELECT 
    studytime_group,
    COUNT(*) AS number_of_students,
    ROUND(AVG(CAST(G3 AS FLOAT)), 2) AS average_final_grade
FROM dbo.vw_student_analysis
GROUP BY studytime_group
ORDER BY average_final_grade DESC;

-- Average final grade by gender
SELECT 
    sex,
    COUNT(*) AS number_of_students,
    ROUND(AVG(CAST(G3 AS FLOAT)), 2) AS average_final_grade
FROM dbo.vw_student_analysis
GROUP BY sex;

-- Average final grade by school
SELECT 
    school,
    COUNT(*) AS number_of_students,
    ROUND(AVG(CAST(G3 AS FLOAT)), 2) AS average_final_grade
FROM dbo.vw_student_analysis
GROUP BY school;
