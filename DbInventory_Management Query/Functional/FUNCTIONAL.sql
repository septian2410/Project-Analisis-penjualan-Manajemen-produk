USE DbInventory_Management;

-- CREATE DATABASE inventory_management;
-- USE

-- # CHECK spid,dbid,loginame (KILL)
--SELECT 
--    spid, 
--    dbid, 
--    loginame 
--FROM 
--    sys.sysprocesses 
--WHERE 
--    dbid = DB_ID('inventory_management');
-- # KILL spid
--KILL 67;

-- # DESCRIBE Column 
--EXEC sp_columns 'orders';
--EXEC sp_columns 'users';

-- # CHANGE Column name (NEW, OLD)
--EXEC sp_rename 'products.product_code', 'code_product', 'COLUMN';

-- # CHANGE TABLE name (old, NEW)
--EXEC sp_rename 'productCategories', 'categories';

-- # REMOVE ALL DATA FROM Column 
--DELETE FROM products;

-- # RESET AUTO-INCREMENT ID (NEED REMOVE ALL DATA FIRST!!)
--DBCC CHECKIDENT ('users', RESEED, 0);

-- # DELETE TABLE FROM DATABASE
--DROP TABLE products;

-- # DELETE DATABASE (PERMANENT)
--DROP DATABASE inventory_management;

-- # DELETE CONSTRAINT (FOREIGN KEY / FK) FROM TABLE --> NEED BEFORE DELETE TABLE  --> NEED FIND / CHECK CONSTRAINT FIRST
--ALTER TABLE orders
--DROP CONSTRAINT PK__orders__46596229AFE29F0B;
