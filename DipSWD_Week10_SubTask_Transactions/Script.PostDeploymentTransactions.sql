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
IF '$(LoadTestData)' = 'true'

BEGIN

INSERT INTO ACCOUNT (AcctNo, Fname, Lname, CreditLimit, Balance) VALUES
(100, 'Angus', 'Brayshaw', $1000.00, $500.00),
(101, 'Jesse', 'Hogan', $10000.00, $4567.45),
(102, 'Nathan', 'Jones', $2678.01, $367.80),
(103, 'Michael', 'Hibberd', $3050.02, $1050.20),
(104, 'Jake', 'Lever', $1000000.00, $900000.90);

INSERT INTO [LOG] (OrigAcct, LogDateTime, RecAcct, Amount) VALUES
(100, '2018-05-28 13:22:45', 104, $200.76),
(101, '2018-04-27 07:27:31', 103, $50.23),
(102, '2018-02-16 09:35:23', 101, $93.43),
(103, '2018-03-05 17:23:56', 102, $5.01),
(104, '2018-01-01 01:05:05', 100, $4.36);

END;
