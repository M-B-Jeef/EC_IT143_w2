DROP VIEW IF EXISTS dbo.v_indian_placement_load;
GO

CREATE VIEW dbo.v_indian_placement_load
AS

/***********************************************************************************
NAME: dbo.v_indian_placement_load
PURPOSE: Create Indian Placement load view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -----------------------------------------------
1.0     02/13/2026   BL            Built for IT143 W4.2 Project

NOTES:
Step 4 of 8 - Answer Focused Approach
***********************************************************************************/

SELECT COUNT(*) AS total_students,
       GETDATE() AS current_date_time
FROM dbo.indian_engineering_student_placement;
GO
