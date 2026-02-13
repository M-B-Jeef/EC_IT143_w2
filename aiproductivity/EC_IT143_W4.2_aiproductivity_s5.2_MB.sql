-- Q: How many records exist per job_role?

-- A: We will query ai_productivity_features

DROP TABLE IF EXISTS dbo.t_ai_productivity;
GO

CREATE TABLE dbo.t_ai_productivity
(
 job_role VARCHAR(100) NOT NULL,
 total_records INT NOT NULL,
 current_date_time DATETIME NOT NULL DEFAULT GETDATE(),
 CONSTRAINT PK_t_ai_productivity PRIMARY KEY CLUSTERED (job_role ASC)
);
GO
