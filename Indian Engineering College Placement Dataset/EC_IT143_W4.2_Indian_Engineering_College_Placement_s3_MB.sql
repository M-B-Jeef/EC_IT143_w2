-- Q: How many students exist in the Indian Engineering Placement dataset?

-- A: We will query indian_engineering_student_placement
-- We will count total students
-- Then validate results

SELECT COUNT(*) AS total_students,
       GETDATE() AS current_date_time
FROM dbo.indian_engineering_student_placement;
