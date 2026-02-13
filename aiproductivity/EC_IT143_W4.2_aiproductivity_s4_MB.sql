DROP VIEW IF EXISTS dbo.v_ai_productivity_features;
GO

CREATE VIEW dbo.v_ai_productivity_features
AS

/***********************************************************************************
NAME: dbo.v_ai_productivity_features
PURPOSE: Create AI Productivity load view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -----------------------------------------------
1.0     02/13/2026   BL            Built for IT143 W4.2 Project

RUNTIME:
1s

NOTES:
Step 4 of 8 - Answer Focused Approach
***********************************************************************************/

SELECT 
       job_role,
       COUNT(*) AS total_records,
       GETDATE() AS current_date_time
FROM dbo.ai_productivity_features
GROUP BY job_role;
GO

