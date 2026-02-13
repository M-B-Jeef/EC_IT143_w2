DROP PROCEDURE IF EXISTS dbo.usb_hello_world_load;
GO

CREATE PROCEDURE dbo.usb_hello_world_load
AS
BEGIN
    /***********************************************************************************
    NAME: dbo.usb_hello_world_load
    PURPOSE: hello world - load user stored procedure 

    MODIFICATION LOG:
    Ver      Date        Author        Description
    -----    ----------  -----------   -----------------------------------------------
    1.0      05/23/2022  JJAUSSI       Built this script for EC IT440

    RUNTIME:
    1s
    NOTES:
    This script exists to help me learn step 7 of 8 in the Answer Focused Approach for T-SQL Data Manipulation
    ***********************************************************************************/

    -- 1) Reload Data 
    TRUNCATE TABLE dbo.t_hello_world;

    INSERT INTO dbo.t_hello_world (my_message, current_date_time)
    SELECT 
        v.my_message,
        v.Current_date_time
    FROM dbo.v_hello_world_load AS v;

    -- 2) Review Results 
    SELECT t.*
    FROM dbo.t_hello_world AS t;
END;
GO



