-- # USE DATABASE (ALWAYS FIRST!!!)
USE DbInventory_Management ;

--CREATE TABLE products (
--	product_id		INT IDENTITY(1,1) PRIMARY KEY,
--	product_code	VARCHAR(50),
--	product_name	VARCHAR(50),
--	description		VARCHAR(100),
--	price			DECIMAL(10,2) NOT NULL,
--	stok			INT,
--	created_at		DATETIME DEFAULT GETDATE(),
--	updated_at		DATETIME
--);


--## Trigger & Sequnce (BARU)
--GO
---- # TRIGGER Column product_code = P001
--CREATE TRIGGER trg_after_insert_products
--ON products
--AFTER INSERT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Update product_code setelah insert
--    UPDATE p
--    SET p.product_code = 'P' + RIGHT('000' + CAST(i.product_id AS VARCHAR(4)), 3)
--    FROM products p
--    INNER JOIN inserted i ON p.product_id = i.product_id;
--END;
--GO

--# Memeriksa Apakah Trigger dan Sequence Sudah Terhapus
----* Cek daftar trigger di database:
--SELECT name 
--FROM sys.triggers
--WHERE name = 'trg_after_insert_products';

----* Cek daftar sequence di database:
--SELECT name 
--FROM sys.sequences
--WHERE name = '';


--# Menghapus Trigger & SEQUENCE ;
--DROP TRIGGER trg_after_insert_products;
--DROP SEQUENCE ;


--#########################################################################################################################################################


--## Trigger & Sequnce (LAMA)
 --# TRIGGER Column product_code = P001
--CREATE TRIGGER trg_before_insert_products
--ON products
--AFTER INSERT
--AS
--BEGIN
--    -- Update product_code setelah insert
--    UPDATE products
--    SET product_code = 'P' + RIGHT('00' + CAST(product_id AS VARCHAR(4)), 3)
--    WHERE product_id IN (SELECT product_id FROM inserted);
--END;


 --# SEQUENCE Column product_id
--CREATE SEQUENCE product_seq
--    AS INT
--    START WITH 1
--    INCREMENT BY 1;