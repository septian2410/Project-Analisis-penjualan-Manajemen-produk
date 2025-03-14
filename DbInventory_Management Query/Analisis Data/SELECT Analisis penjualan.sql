USE DbInventory_Management;

Select * From productPrices;
Select * From products;

---- # Total Penjualan per Produk
--SELECT 
--	p.product_name,
--	SUM(od.quantity) AS total_units_sold,
--	SUM(od.quantity * price_each) AS total_sales
--FROM
--	orderDetails od
--JOIN
--	products P on od.product_id = p.product_id
--GROUP BY
--	p.product_name
--ORDER BY
--	total_sales DESC;


---- # Total Penjualan per Kategori
--SELECT 
--	c.category_name,
--	SUM(od.quantity) AS total_units_sold,
--	SUM(od.quantity * price_each) AS total_sales
--FROM
--	orderDetails od
--JOIN
--	products p ON od.product_id = p.product_id
--JOIN
--	productCategories pc ON p.product_id = pc.product_id
--JOIN
--	categories c ON pc.category_id = c.category_id
--GROUP BY
--	c.category_name
--ORDER BY
--	total_units_sold DESC;


-- # Produk Terlaris
--SELECT 
--	p.product_name,
--	SUM(od.quantity) AS total_units_sold,
--	SUM(od.quantity * price_each) AS total_sales
--FROM
--	orderDetails od
--JOIN
--	products p ON od.product_id = p.product_id
--GROUP BY
--	p.product_name
--ORDER BY
--	total_units_sold DESC;


-- # 5 Produk dengan Stok Terendah
--SELECT TOP 5
--	p.product_name,
--	p.stok,
--	c.category_name
--FROM 
--	products p
--JOIN
--	productCategories pc ON p.product_id = pc.product_id
--JOIN	
--	categories c ON pc.category_id = c.category_id
--ORDER BY
--	p.stok ASC;

--SELECT * FROM orders;

-- # Rata-Rata Jumlah Barang per Transaksi
--SELECT 
--	DATEPART(YEAR, o.order_date) AS order_year,
--	DATEPART(MONTH, o.order_date) AS order_month,
--	AVG(total_items) AS average_items_per_order
--FROM (
--	SELECT 
--		o.order_id,
--		SUM(quantity) AS total_items
--	FROM
--		orderDetails od
--	JOIN
--		orders o ON od.order_id = o.order_id
--	GROUP BY
--		o.order_id
--) AS order_summary
--JOIN
--	orders o ON order_summary.order_id = o.order_id
--GROUP BY
--	 DATEPART(YEAR, o.order_date),
--	 DATEPART(MONTH, o.order_date) 
--ORDER BY
--	order_year, order_month;


-- # Produk Terbaru
--SELECT TOP 2
--	p.product_name,
--	p.created_at,
--	c.category_name
--FROM
--	products p
--JOIN
--	productCategories pc ON p.product_id = pc.product_id
--JOIN
--	categories c ON pc.category_id = c.category_id
--WHERE 
--	c.category_name = 'computers'
--ORDER BY
--	p.created_at DESC;

-- # Rangkuman Penjualan per Bulan
--SELECT
--	FORMAT(o.order_date, 'yyyy-MM') AS month,
--	SUM(od.quantity) AS total_units_sold,
--	SUM(od.quantity * od.price_each) AS total_sales
--FROM
--	orderDetails od
--JOIN
--	orders o ON od.order_id = o.order_id
--GROUP BY
--	FORMAT(o.order_date, 'yyyy-MM')
--ORDER BY
--	month;


-- # 5 Produk dengan Laba Tertinggi
--SELECT
--	p.product_name,
--	pp.original_price AS cost_product,
--	p.price AS sell_price,
--	SUM(od.quantity) AS total_units_sold,
--	SUM(od.quantity * (od.price_each - pp.original_price)) AS profit,
--	SUM(od.quantity * p.price) AS total_sales
--FROM
--	orderDetails od
--JOIN
--	products p ON od.product_id = p.product_id
--JOIN
--	productPrices pp ON p.product_id = pp.product_id
--GROUP BY
--	p.product_name,
--	pp.original_price,
--	p.price
--ORDER BY
--	profit DESC;



-- # 5 Pesanan dengan Total Pembelian Terbanyak
--SELECT TOP 5
--	o.order_id, o.order_code, o.total_price,
--	u.username
--FROM
--	users u
--JOIN
--	orders o ON u.user_id = o.order_id
--ORDER BY
--	o.total_price DESC;


-- # 5 Produk yang Belum Pernah Dipesan
--SELECT TOP 5
--	p.product_id,
--	p.product_name,
--	p.stok
--FROM
--	products p
--LEFT JOIN
--	orderDetails od ON p.product_id = od.product_id
--WHERE
--	od.product_id IS NULL
--ORDER BY
--	p.stok DESC;