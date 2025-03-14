-- # USE DATABASE (ALWAYS FIRST!!!)
USE DbInventory_Management ;

--CREATE TABLE orders (
--    order_id INT IDENTITY(1,1) PRIMARY KEY,
--    user_id INT,
--    order_code VARCHAR(50),
--    total_price DECIMAL(10, 2) NOT NULL,
--    status VARCHAR(50) NOT NULL,
--    order_date DATETIME NOT NULL,

--    FOREIGN KEY (user_id) REFERENCES users(user_id)
--);


--## Trigger & Sequnce (BARU)
--GO
--CREATE TRIGGER trg_after_insert_orders
--ON orders
--AFTER INSERT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Update order_code setelah insert
--    UPDATE o
--    SET o.order_code = 'ORD' + RIGHT('000' + CAST(i.order_id AS VARCHAR(4)), 3)
--    FROM orders o
--    INNER JOIN inserted i ON o.order_id = i.order_id;
--END;
--GO


--# Memeriksa Apakah Trigger dan Sequence Sudah Terhapus
----* Cek daftar trigger di database:
--SELECT name 
--FROM sys.triggers
--WHERE name = 'trg_after_insert_orders';

----* Cek daftar sequence di database:
--SELECT name 
--FROM sys.sequences
--WHERE name = 'order_seq';


--# Menghapus Trigger & SEQUENCE ;
--DROP TRIGGER trg_after_insert_orders;
--DROP SEQUENCE order_seq;




--#########################################################################################################################################################

--## Trigger & Sequnce (LAMA)
---- # TRIGGER Column order_code = ORD0001
--CREATE TRIGGER trg_after_insert_orders
--ON orders
--AFTER INSERT
--AS
--BEGIN
--    -- Update order_code setelah insert
--    UPDATE orders
--    SET order_code = 'ORD' + RIGHT('000' + CAST(order_id AS VARCHAR(4)), 3)
--    WHERE order_id IN (SELECT order_id FROM inserted);
--END;


-- # SEQUENCE Column order_id
--CREATE SEQUENCE order_seq
--    AS INT
--    START WITH 1
--    INCREMENT BY 1;