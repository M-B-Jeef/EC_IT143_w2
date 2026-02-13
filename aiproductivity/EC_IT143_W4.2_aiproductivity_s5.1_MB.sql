SELECT v.job_role,
       v.total_records,
       v.current_date_time
INTO dbo.t_ai_productivity_targets
FROM dbo.v_ai_productivity_features AS v;