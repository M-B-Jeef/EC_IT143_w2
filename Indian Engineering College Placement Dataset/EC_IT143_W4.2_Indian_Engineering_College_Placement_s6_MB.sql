TRUNCATE TABLE dbo.t_indian_placement;

INSERT INTO dbo.t_indian_placement
SELECT v.total_students,
       v.current_date_time
FROM dbo.v_indian_placement_load AS v;

SELECT *
FROM dbo.t_indian_placement;
