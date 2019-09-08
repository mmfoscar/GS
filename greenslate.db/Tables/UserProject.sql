CREATE TABLE [dbo].[UserProject]
(
	[UserId] INT NOT NULL, 
    CONSTRAINT [FK_UserProject_ToUser] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),
	[ProjectId] INT NOT NULL, 
    [IsActive] BIT NOT NULL, 
    [AssignedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_UserProject_ToProject] FOREIGN KEY ([ProjectId]) REFERENCES [Project]([Id]), 
    CONSTRAINT [PK_UserProject] PRIMARY KEY ([ProjectId], [UserId])
)
