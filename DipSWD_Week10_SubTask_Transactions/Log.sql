CREATE TABLE [dbo].[Log]
(
	[OrigAcct] INT,
	[LogDateTime] DATETIME,
	[RecAcct] INT,
	[Amount] MONEY NOT NULL,
	CONSTRAINT FK_OrigAcct FOREIGN KEY (OrigAcct) REFERENCES Account(AcctNo),
	CONSTRAINT FK_RecAcct FOREIGN KEY (RecAcct) REFERENCES Account(AcctNo),
	CONSTRAINT PK_OrigAcct PRIMARY KEY (OrigAcct, LogDateTime),

)
