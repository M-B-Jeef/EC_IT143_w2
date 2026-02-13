-- Q: How many students exist in the Indian Engineering Placement dataset?

-- A: We will query indian_engineering_student_placement
-- We will count total students
-- Then validate results

SELECT v.total_students,
       v.current_date_time
INTO dbo.t_indian_placement
FROM dbo.v_indian_placement_load AS v;
