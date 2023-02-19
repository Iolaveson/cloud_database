-- IF NOT EXISTS (
--    SELECT name
--    FROM sys.databases
--    WHERE name = 'projects_database'
-- )
-- CREATE DATABASE [projects_database]


-- ALTER DATABASE [projects_database] SET QUERY_STORE=ON


-- -- Create a new table called 'projects' in schema 'dbo'
-- -- Drop the table if it already exists
-- -- IF OBJECT_ID('dbo.projects', 'U') IS NOT NULL
-- --     DROP TABLE dbo.projects

-- -- Create the table in the specified schema
-- CREATE TABLE dbo.projects
-- (
--    ProjectId INT , -- primary key column
--    ProjectName [NVARCHAR](50) NOT NULL,
--    IsCompleted [BIT] NOT NULL,
--    PRIMARY KEY (ProjectId)
-- );


-- CREATE TABLE dbo.projectInfo (
--     ProjectNumber INT ,
--     ProjectInfo [NVARCHAR](50) NOT NULL,
--     project_id INT , 
--     PRIMARY KEY (ProjectNumber),
--     FOREIGN KEY (project_id) REFERENCES projects (ProjectId)
-- );


-- SELECT * FROM projects;

-- INSERT INTO projects
--     ([ProjectId], [ProjectName], [IsCompleted])
-- VALUES
--     (1, 'Calculator', 0),
--     (2, 'azure database', 0), 
--     (3, 'SQL database', 0);
-- GO

-- -- DROP TABLE projectInfo;

-- INSERT INTO projectInfo
--     ([ProjectNumber], [ProjectInfo], [project_id])
-- VALUES
--     (1, 'simple calculator in C#', 1),
--     (2, 'cloud database that stores project history', 2),
--     (3, 'database program that will manage a todolist', 3);
-- GO

SELECT * FROM projects a JOIN projectInfo b on b.project_id = a.ProjectId

-- SELECT * FROM projectInfo;

