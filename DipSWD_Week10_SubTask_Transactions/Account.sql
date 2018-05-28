CREATE TABLE [dbo].[Account]
(
	[AcctNo] INT,
	[Fname] NVARCHAR(50) NOT NULL,
	[Lname] NVARCHAR(50) NOT NULL,
	[CreditLimit] MONEY,
	[Balance] MONEY,
	CONSTRAINT PK_AcctNo PRIMARY KEY (AcctNo),
	CONSTRAINT UQ_FnameLname UNIQUE (Fname, Lname),
	CHECK (CreditLimit < 0),
	CHECK (Balance > CreditLimit)
)
