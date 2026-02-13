-- Q: How many records exist per job_role?

-- A: We will query ai_productivity_features

TRUNCATE TABLE dbo.t_ai_productivity;

INSERT INTO dbo.t_ai_productivity
SELECT v.job_role,
       v.total_records,
       v.current_date_time
FROM dbo.v_ai_productivity_features AS v;

SELECT *
FROM dbo.t_ai_productivity;
