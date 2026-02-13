
CREATE PROCEDURE dbo.usp_ai_productivity_features
AS
BEGIN

/***********************************************************************************
NAME: dbo.usp_ai_productivity_features
PURPOSE: Load AI Productivity table from view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -----------------------------------------------
1.0     02/13/2026   BL            Built for IT143 W4.2 Answer Focused Approach

RUNTIME:
1s

NOTES:
This script exists to help me learn Step 7 of 8 in the Answer Focused Approach 
for T-SQL Data Manipulation
***********************************************************************************/

    -- 1) Reload data
    TRUNCATE TABLE dbo.t_ai_productivity;

    INSERT INTO dbo.t_ai_productivity
    SELECT v.job_role,
           v.total_records,
           v.current_date_time
    FROM dbo.v_ai_productivity_features AS v;

    -- 2) Review results
    SELECT *
    FROM dbo.t_ai_productivity;

END;
GO

