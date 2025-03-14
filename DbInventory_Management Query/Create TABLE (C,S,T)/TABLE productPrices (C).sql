USE DbInventory_Management ;

--CREATE TABLE productPrices (
--    price_id INT PRIMARY KEY IDENTITY(1,1),
--    product_id INT NOT NULL,
--    original_price DECIMAL(10, 2) NOT NULL,
--    effective_date DATETIME NOT NULL DEFAULT GETDATE(),
--    FOREIGN KEY (product_id) REFERENCES products(product_id)
--);


SELECT name FROM sys.tables;