--drop table  [WHODDB].[dbo].[BNA]
--drop table  [WHODDB].[dbo].[CCODE]   
--drop table  [WHODDB].[dbo].[DD]
--drop table  [WHODDB].[dbo].[DDA]     
--drop table  [WHODDB].[dbo].[DDSOURCE]
--drop table  [WHODDB].[dbo].[INA]     
--drop table  [WHODDB].[dbo].[ING]     
--drop table  [WHODDB].[dbo].[MAN]     


-- BULK INSERT [WHODDB].[dbo].[BNA] FROM 'C:\WHODD-B\BNA.txt' WITH (FORMATFILE = 'C:\WHODD-B\BNA.xml', ROWTERMINATOR='\r\n');
-- BULK INSERT [WHODDB].[dbo].[CCODE] FROM 'C:\WHODD-B\CCODE.txt' WITH (FORMATFILE = 'C:\WHODD-B\CCODE.xml', ROWTERMINATOR='\r\n');
-- BULK INSERT [WHODDB].[dbo].[DD] FROM 'C:\WHODD-B\DD.txt' WITH (FORMATFILE = 'C:\WHODD-B\DD.xml', ROWTERMINATOR='\r\n');
-- BULK INSERT [WHODDB].[dbo].[DDA] FROM 'C:\WHODD-B\DDA.txt' WITH (FORMATFILE = 'C:\WHODD-B\DDA.xml', ROWTERMINATOR='\r\n');
-- BULK INSERT [WHODDB].[dbo].[DDSOURCE] FROM 'C:\WHODD-B\DDSOURCE.txt' WITH (FORMATFILE = 'C:\WHODD-B\DDSOURCE.xml', ROWTERMINATOR='\r\n');
-- BULK INSERT [WHODDB].[dbo].[INA] FROM 'C:\WHODD-B\INA.txt' WITH (FORMATFILE = 'C:\WHODD-B\INA.xml', ROWTERMINATOR='\r\n');
-- BULK INSERT [WHODDB].[dbo].[ING] FROM 'C:\WHODD-B\ING.txt' WITH (FORMATFILE = 'C:\WHODD-B\ING.xml', ROWTERMINATOR='\r\n');
-- BULK INSERT [WHODDB].[dbo].[MAN] FROM 'C:\WHODD-B\MAN.txt' WITH (FORMATFILE = 'C:\WHODD-B\MAN.xml', ROWTERMINATOR='\r\n');




/*
Scripts you can test in SSMS before commiting to an export
It will actuall report Line numbers and Column name of the bad data.
*/

--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\BNA.txt', FORMATFILE = 'C:\WHODD-B\BNA.xml') T     
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\CCODE.txt', FORMATFILE = 'C:\WHODD-B\CCODE.xml') T 
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\DD.txt', FORMATFILE = 'C:\WHODD-B\DD.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\DDA.txt', FORMATFILE = 'C:\WHODD-B\DDA.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\DDSOURCE.txt', FORMATFILE = 'C:\WHODD-B\DDSOURCE.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\INA.txt', FORMATFILE = 'C:\WHODD-B\INA.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\ING.txt', FORMATFILE = 'C:\WHODD-B\ING.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD-B\MAN.txt',FORMATFILE = 'C:\WHODD-B\MAN.xml') T

