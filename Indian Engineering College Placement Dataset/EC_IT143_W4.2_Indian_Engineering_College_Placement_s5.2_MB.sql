-- Q: How many students exist in the Indian Engineering Placement dataset?

-- A: We will query indian_engineering_student_placement
-- We will count total students
-- Then validate results

DROP TABLE IF EXISTS dbo.t_indian_placement;
GO

CREATE TABLE dbo.t_indian_placement
(
 total_students INT NOT NULL,
 current_date_time DATETIME NOT NULL DEFAULT GETDATE(),
 CONSTRAINT PK_t_indian_placement PRIMARY KEY CLUSTERED (total_students ASC)
);
GO
