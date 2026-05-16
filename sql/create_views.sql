
USE StudentPerformanceDB;
GO

CREATE OR ALTER VIEW dbo.vw_student_analysis AS
SELECT
    school,
    sex,
    age,
    address,
    famsize,
    Pstatus,
    Medu,
    Fedu,
    Mjob,
    Fjob,
    reason,
    guardian,
    traveltime,
    studytime,
    failures,
    schoolsup,
    famsup,
    paid,
    activities,
    nursery,
    higher,
    internet,
    romantic,
    famrel,
    freetime,
    goout,
    Dalc,
    Walc,
    health,
    absences,
    G1,
    G2,
    G3,

    CASE 
        WHEN G3 >= 10 THEN 'Pass'
        ELSE 'Fail'
    END AS result,

    CASE 
        WHEN absences = 0 THEN 'No absence'
        WHEN absences BETWEEN 1 AND 5 THEN 'Low absence'
        WHEN absences BETWEEN 6 AND 15 THEN 'Medium absence'
        ELSE 'High absence'
    END AS absence_group,

    CASE 
        WHEN studytime = 1 THEN '< 2 hours'
        WHEN studytime = 2 THEN '2 to 5 hours'
        WHEN studytime = 3 THEN '5 to 10 hours'
        WHEN studytime = 4 THEN '> 10 hours'
    END AS studytime_group,

    CASE 
        WHEN G3 >= 16 THEN 'Excellent'
        WHEN G3 >= 14 THEN 'Good'
        WHEN G3 >= 10 THEN 'Average'
        ELSE 'Weak'
    END AS performance_level
FROM dbo.student_mat;
GO

-- Check the cleaned analysis view
SELECT TOP 20*
FROM dbo.vw_student_analysis;
