USE DbInventory_Management ;

--CREATE TABLE users (
--	user_id		INT PRIMARY KEY IDENTITY(1,1),
--	username	VARCHAR(100) NOT NULL,
--	email		VARCHAR(100),
--	nohp		CHAR(12) NOT NULL,
--	created_at	DATETIME DEFAULT GETDATE() 
--);

--Mengecek Tabel yang telah tersedia
SELECT name FROM sys.tables;