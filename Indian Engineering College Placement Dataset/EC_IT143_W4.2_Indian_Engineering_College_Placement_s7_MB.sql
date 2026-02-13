DROP PROCEDURE IF EXISTS dbo.usp_indian_placement_load;
GO

CREATE PROCEDURE dbo.usp_indian_placement_load
AS
BEGIN

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

    TRUNCATE TABLE dbo.t_indian_placement;

    INSERT INTO dbo.t_indian_placement
    SELECT v.total_students,
           v.current_date_time
    FROM dbo.v_indian_placement_load AS v;

    SELECT *
    FROM dbo.t_indian_placement;

END;
GO
