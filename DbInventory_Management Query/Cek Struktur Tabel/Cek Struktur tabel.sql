USE DbInventory_Management ;

--# Cek tabel terdaftar pd databace
--SELECT name FROM sys.tables;

-- # user (PK) relation orders (FK) (user_id)
--EXEC sp_help 'users';

-- # products (PK) relation orderDetails		(FK) (product_id)
-- # products (PK) relation productPrices		(FK) (product_id)
-- # products (PK) relation productCategories	(FK) (product_id)		(Many to Many)
--EXEC sp_help 'products';

-- # categories (PK) relation productCategories	(FK) (category_id)		(Many to Many)
EXEC sp_help 'categories';

--# Junction Tabel (Bridge Many to Many) 2 PK (product_id & category_id)
--EXEC sp_help 'productCategories';

-- # orders (PK) relation orderDetails (FK) (order_id)
--EXEC sp_help 'orders';

--# Single Tabel
--EXEC sp_help 'productPrices';
--EXEC sp_help 'orderDetails';

--# Describe
--EXEC sp_columns 'users';
--EXEC sp_columns 'orders';
--EXEC sp_columns 'orderDetails';