DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS

/***********************************************************************************
******************************
NAME: dbo.v_hello_world_load
PURPOSE: Create the Hello World - load view 

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT440

RUNTIME:
1s

NOTES:
This scripts exist to help me learn step 4 of 8 in the Answer Focused Approach for T-SQL Data Manipulation

******************************************************************************************************************/

     SELECT
         'Hello World' AS my_message,
         GETDATE() AS Current_date_time;
