USE inventory_management;

-- # NESTED SUBQUERY #

--# 1. Pengguna dengan Total Pembelian Lebih dari Rata-Rata
--Pertanyaan: Siapa saja pengguna yang memiliki total pembelian di atas rata-rata total pembelian semua pengguna?

--SELECT
--    u.username,
--    SUM(od.quantity * od.price_each) AS total_spent
--FROM
--    users u
--JOIN
--    orders o ON u.user_id = o.user_id
--JOIN
--    orderDetails od ON o.order_id = od.order_id
--GROUP BY
--    u.username
--HAVING
--    SUM(od.quantity * od.price_each) > (
--        SELECT AVG(total_spent)
--        FROM (
--            SELECT SUM(od.quantity * od.price_each) AS total_spent
--            FROM
--                orders o
--            JOIN
--                orderDetails od ON o.order_id = od.order_id
--            GROUP BY
--                o.user_id
--        ) AS avg_spent
--    )
--ORDER BY
--    total_spent DESC;


--# 2. Produk Terlaris Berdasarkan Kategori Tertentu
--Pertanyaan: Produk apa yang memiliki total penjualan tertinggi dalam kategori tertentu (misalnya, kategori "Smartphones")?

--SELECT
--    p.product_name,
--    SUM(od.quantity * od.price_each) AS total_sales
--FROM
--    orderDetails od
--JOIN
--    products p ON od.product_id = p.product_id
--JOIN
--    productCategories pc ON p.product_id = pc.product_id
--WHERE
--    pc.category_id = (
--        SELECT category_id
--        FROM categories
--        WHERE category_name = 'Smartphones'
--    )
--GROUP BY
--    p.product_name
--ORDER BY
--    total_sales DESC;


--# 3. Produk dengan Penjualan Terendah dalam Kategori
--Pertanyaan: Produk mana dalam kategori tertentu yang memiliki total penjualan terendah?
-- ???
--SELECT
--    p.product_name,
--    SUM(od.quantity * od.price_each) AS total_sales
--FROM
--    products p
--JOIN
--    orderDetails od ON p.product_id = od.product_id
--WHERE
--    p.product_id IN (
--        SELECT product_id
--        FROM productCategories
--        WHERE category_id = (
--            SELECT category_id
--            FROM categories
--            WHERE category_name = 'Wearables'
--        )
--    )
--GROUP BY
--    p.product_name
--ORDER BY
--    total_sales ASC
--LIMIT 1;


--# 4. Produk yang Tidak Pernah Terjual
--Pertanyaan: Produk apa saja yang belum pernah terjual sama sekali?

--SELECT
--    p.product_name
--FROM
--    products p
--WHERE
--    p.product_id NOT IN (
--        SELECT DISTINCT product_id
--        FROM orderDetails
--    );


--# 5. Pengguna yang Membeli Produk Termahal
--Pertanyaan: Siapa saja pengguna yang pernah membeli produk dengan harga tertinggi?

--SELECT
--    u.username,
--    p.product_name,
--    p.price
--FROM
--    users u
--JOIN
--    orders o ON u.user_id = o.user_id
--JOIN
--    orderDetails od ON o.order_id = od.order_id
--JOIN
--    products p ON od.product_id = p.product_id
--WHERE
--    p.price = (
--        SELECT MAX(price)
--        FROM products
--    );


--# 6. Pengguna yang Membeli Produk Lebih dari Rata-Rata Harga
--Pertanyaan: Siapa pengguna yang pernah membeli produk dengan harga di atas rata-rata?

--SELECT 
--    u.username, 
--    p.product_name, 
--    p.price
--FROM 
--    users u
--JOIN 
--    orders o ON u.user_id = o.user_id
--JOIN 
--    orderDetails od ON o.order_id = od.order_id
--JOIN 
--    products p ON od.product_id = p.product_id
--WHERE 
--    p.price > (SELECT AVG(price) FROM products);


--# 7. Produk dengan Penjualan Tertinggi Berdasarkan Kategori
--Pertanyaan: Produk apa yang memiliki total penjualan tertinggi dalam kategori "Smartphones"?

--SELECT 
--    p.product_name, 
--    SUM(od.quantity * od.price_each) AS total_sales
--FROM 
--    products p
--JOIN 
--    orderDetails od ON p.product_id = od.product_id
--JOIN 
--    productCategories pc ON p.product_id = pc.product_id
--WHERE 
--    pc.category_id = (SELECT category_id FROM categories WHERE category_name = 'Smartphones')
--GROUP BY 
--    p.product_name
--ORDER BY 
--    total_sales DESC;


--# 8. Kategori Produk yang Paling Banyak Terjual
--Pertanyaan: Kategori produk mana yang memiliki total penjualan tertinggi?

--SELECT 
--    SUM(od.quantity * od.price_each) AS total_sales
--FROM 
--    categories c
--JOIN 
--    productCategories pc ON c.category_id = pc.category_id
--JOIN 
--    products p ON pc.product_id = p.product_id
--JOIN 
--    orderDetails od ON p.product_id = od.product_id
--GROUP BY 
--    c.category_name
--ORDER BY 
--    total_sales DESC;
--    c.category_name, 


--# 9. Pengguna dengan Pembelian Terbanyak
--Pertanyaan: Siapa pengguna yang melakukan pembelian terbanyak?

--SELECT 
--    u.username, 
--    COUNT(o.order_id) AS total_orders
--FROM 
--    users u
--JOIN 
--    orders o ON u.user_id = o.user_id
--GROUP BY 
--    u.username
--HAVING 
--    COUNT(o.order_id) = (SELECT MAX(order_count) FROM (SELECT COUNT(order_id) AS order_count FROM orders GROUP BY user_id) AS user_orders);


--# 10. Rata-Rata Jumlah Produk per Pesanan
--Pertanyaan: Berapa rata-rata jumlah produk yang dipesan per pesanan?

--SELECT 
--    AVG(product_count) AS avg_products_per_order
--FROM (
--    SELECT 
--        COUNT(product_id) AS product_count
--    FROM 
--        orderDetails
--    GROUP BY 
--        order_id
--) AS order_products;


--# 11. Pengguna yang Belum Pernah Melakukan Pembelian
--Pertanyaan: Siapa pengguna yang belum pernah melakukan pembelian?

--SELECT 
--    u.username
--FROM 
--    users u
--WHERE 
--    u.user_id NOT IN (SELECT DISTINCT user_id FROM orders);


--# 12. Produk Paling Sering Dibeli Berdasarkan Kategori
--Pertanyaan: Produk mana yang paling sering dibeli di setiap kategori?
-- ???
--SELECT 
--    c.category_name, 
--    p.product_name, 
--    COUNT(od.product_id) AS product_count
--FROM 
--    categories c
--JOIN 
--    productCategories pc ON c.category_id = pc.category_id
--JOIN 
--    products p ON pc.product_id = p.product_id
--JOIN 
--    orderDetails od ON p.product_id = od.product_id
--GROUP BY 
--    c.category_name, p.product_name
--HAVING 
--    COUNT(od.product_id) = (
--        SELECT MAX(product_count)
--        FROM (
--            SELECT 
--                COUNT(od.product_id) AS product_count
--            FROM 
--                productCategories pc
--            JOIN 
--                orderDetails od ON pc.product_id = od.product_id
--            WHERE 
--                pc.category_id = c.category_id
--            GROUP BY 
--                pc.product_id
--        ) AS category_product_counts
--    );


--# 13. Pesanan Terbaru oleh Setiap Pengguna
--Pertanyaan: Apa pesanan terbaru yang dilakukan oleh setiap pengguna?

--SELECT 
--    u.username, 
--    o.order_code, 
--    o.order_date
--FROM 
--    users u
--JOIN 
--    orders o ON u.user_id = o.user_id
--WHERE 
--    o.order_date = (
--        SELECT MAX(order_date) 
--        FROM orders 
--        WHERE user_id = u.user_id
--    );


--# 14. Total Penjualan Per Hari
--Pertanyaan: Berapa total penjualan untuk setiap hari?

--SELECT 
--    o.order_date, 
--    SUM(od.quantity * od.price_each) AS total_sales
--FROM 
--    orders o
--JOIN 
--    orderDetails od ON o.order_id = od.order_id
--GROUP BY 
--    o.order_date;


--# 15.Produk dengan Harga di Bawah Rata-Rata
--Pertanyaan: Produk apa yang memiliki harga di bawah rata-rata?

--SELECT 
--    product_name, 
--    price
--FROM 
--    products
--WHERE 
--    price < (SELECT AVG(price) FROM products);

