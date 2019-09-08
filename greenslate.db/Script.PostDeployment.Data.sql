/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------


*/

/* User Data */

INSERT INTO [User] VALUES(1,'Benny','Wade');
INSERT INTO [User] VALUES(2,'Kassandra','Matthews');
INSERT INTO [User] VALUES(3,'John','Blackburn');

/* Project Data */

INSERT INTO [Project] VALUES(1,'2019-02-20 15:55:35','2019-12-08 10:07:34',91);
INSERT INTO [Project] VALUES(2,'2019-02-02 22:05:39','2019-12-05 09:39:58',9);
INSERT INTO [Project] VALUES(3,'2019-03-28 06:11:07','2019-12-01 06:13:46',61);
INSERT INTO [Project] VALUES(4,'2019-03-26 00:39:44','2019-12-23 01:45:50',59);
INSERT INTO [Project] VALUES(5,'2019-02-22 04:31:01','2019-12-15 03:46:40',57);
INSERT INTO [Project] VALUES(6,'2019-02-03 21:38:20','2019-12-08 10:56:17',59);
INSERT INTO [Project] VALUES(7,'2019-02-09 10:39:37','2019-12-12 10:48:10',56);
INSERT INTO [Project] VALUES(8,'2019-01-22 13:12:00','2019-12-27 06:47:05',81);
INSERT INTO [Project] VALUES(9,'2019-02-20 21:46:03','2019-12-10 07:42:50',84);
INSERT INTO [Project] VALUES(10,'2019-03-28 14:44:13','2019-12-24 10:28:19',41);
INSERT INTO [Project] VALUES(11,'2019-03-24 21:47:03','2019-12-07 07:33:31',8);
INSERT INTO [Project] VALUES(12,'2019-02-02 08:02:21','2019-12-16 04:36:22',35);
INSERT INTO [Project] VALUES(13,'2019-03-13 08:06:19','2019-12-28 12:37:50',56);
INSERT INTO [Project] VALUES(14,'2019-03-13 00:48:45','2019-12-16 12:51:52',14);
INSERT INTO [Project] VALUES(15,'2019-01-02 11:43:27','2019-12-15 18:15:21',48);

/* User Project Data */

INSERT INTO [UserProject] VALUES(1,1,1,'2019-03-31 15:24:06');
INSERT INTO [UserProject] VALUES(1,2,1,'2019-02-03 12:14:18');
INSERT INTO [UserProject] VALUES(1,3,1,'2019-08-21 20:35:18');
INSERT INTO [UserProject] VALUES(1,4,1,'2018-10-17 08:31:10');
INSERT INTO [UserProject] VALUES(1,5,0,'2018-11-28 04:31:40');
INSERT INTO [UserProject] VALUES(2,6,0,'2019-09-14 04:03:40');
INSERT INTO [UserProject] VALUES(2,7,0,'2019-03-12 08:32:39');
INSERT INTO [UserProject] VALUES(2,8,0,'2018-12-24 03:57:27');
INSERT INTO [UserProject] VALUES(2,9,0,'2019-01-01 21:22:43');
INSERT INTO [UserProject] VALUES(2,10,1,'2019-07-20 07:43:19');
INSERT INTO [UserProject] VALUES(3,11,1,'2018-12-16 04:36:54');
INSERT INTO [UserProject] VALUES(3,12,0,'2019-04-21 10:39:39');
INSERT INTO [UserProject] VALUES(3,13,0,'2019-03-08 18:46:45');
INSERT INTO [UserProject] VALUES(3,14,1,'2019-09-29 06:24:13');
INSERT INTO [UserProject] VALUES(3,15,1,'2019-06-06 21:12:04');

