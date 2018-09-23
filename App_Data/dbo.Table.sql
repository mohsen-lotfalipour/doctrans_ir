CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [name] NVARCHAR(50) NULL, 
    [family] NVARCHAR(50) NULL, 
    [username] NCHAR(15) NULL, 
    [password] NCHAR(15) NULL, 
    [userstatus] BIT NULL
)
