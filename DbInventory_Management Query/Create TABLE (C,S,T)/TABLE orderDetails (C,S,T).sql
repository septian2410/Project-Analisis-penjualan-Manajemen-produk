-- # USE DATABASE (ALWAYS FIRST!!!)
USE DbInventory_Management ;

--# Membuat Tabel dgn Schema DBO default SQL Server = dbo.orderDetails
--CREATE TABLE orderDetails (
--	order_detail_id		INT IDENTITY(1,1) PRIMARY KEY,
--	order_id			INT,
--	product_id			INT,
--	detail_code			VARCHAR(50),
--	quantity			INT,
--	price_each			DECIMAL(10,2) NOT NULL,

--	FOREIGN KEY		(order_id) REFERENCES orders(order_id),
--	FOREIGN KEY		(product_id) REFERENCES products(product_id)
--);

--## Trigger & Sequnce (BARU)
--GO
--CREATE TRIGGER trg_after_insert_orderDetails
--ON orderDetails
--AFTER INSERT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Update detail_code setelah insert
--    UPDATE od
--    SET od.detail_code = 'DET' + RIGHT('000' + CAST(i.order_detail_id AS VARCHAR(4)), 3)
--    FROM orderDetails od
--    INNER JOIN inserted i ON od.order_detail_id = i.order_detail_id;
--END;
--GO


--# Menghapus Trigger & SEQUENCE ;
--DROP TRIGGER trg_after_insert_orderDetails;
--DROP SEQUENCE  orderDetail_seq;

--# Memeriksa Apakah Trigger dan Sequence Sudah Terhapus
----* Cek daftar trigger di database:
--SELECT name 
--FROM sys.triggers
--WHERE name = 'trg_after_insert_orderDetails';

----* Cek daftar sequence di database:
--SELECT name 
--FROM sys.sequences
--WHERE name = 'orderDetail_seq';



--#########################################################################################################################################################



--# Membuat Tabel dgn Schema DBO product  = produk.orderDetails
--CREATE SCHEMA sales;

--CREATE TABLE sales.orderDetails (
--	order_detail_id		INT IDENTITY(1,1) PRIMARY KEY,
--	order_id			INT,
--	product_id			INT,
--	detail_code			VARCHAR(50),
--	quantity			INT,
--	price_each			DECIMAL(10,2) NOT NULL,

----);


--## Fungsi Schema  ##
--= membantu mengelompokkan tabel berdasarkan kategori atau departemen
--contoh =
--CREATE TABLE hr.employees ( ... );     -- Untuk data karyawan
--CREATE TABLE sales.orders ( ... );     -- Untuk data penjualan
--CREATE TABLE finance.transactions ( ... ); -- Untuk data keuangan

--= Keamanan & Hak Akses (Authorization Control)
--contoh =
--DENY SELECT ON SCHEMA::finance TO user_hr;

--= Kinerja & Manajemen yang Lebih Baik
--contoh = 
--sales.orders  -- Tabel order untuk penjualan
--inventory.orders  -- Tabel order untuk inventaris

--= Menghindari Perubahan Langsung ke dbo
--contoh = 
--CREATE TABLE dbo.orders ( ... );  -- Semua user bisa akses (jika punya izin ke dbo)
--CREATE TABLE sales.orders ( ... ); -- Hanya user tertentu yang bisa akses



--## Trigger & Sequnce (LAMA)
-- # TRIGGER Column detail_code = DET0001
--CREATE TRIGGER trg_after_insert_orderDetails
--ON orderDetails
--AFTER INSERT
--AS
--BEGIN
--     --Update detail_code setelah insert
--    UPDATE orderDetails
--    SET detail_code = 'DET' + RIGHT('000' + CAST(order_detail_id AS VARCHAR(4)), 3)
--    WHERE order_detail_id IN (SELECT order_detail_id FROM inserted);
--END;


-- # SEQUENCE Column order_detail_id
--CREATE SEQUENCE orderDetail_seq
--    AS INT
--    START WITH 1
--    INCREMENT BY 1;
