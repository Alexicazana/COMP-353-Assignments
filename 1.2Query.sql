SELECT Name, SID
FROM Students
JOIN Courses_Enrolled ON Students.SID = Courses_Enrolled.SID
JOIN Courses ON Courses_Enrolled.CID = Courses.CID
WHERE Courses.Name = 'Databases' AND Courses_Enrolled.Grade >= 'B+';



-- This query will join the three tables (Students, Courses_Enrolled, and Courses)
-- and filter the results to only include students who took the course "Databases" and received at least a grade of "B+". The output of this query will be the name and ID of each student who meets the criteria as a table with two columns (Name, SID).
-- As tuples, the result would be as follows:
{
    ('Alice', 1),
    ('Bob', 2)
}