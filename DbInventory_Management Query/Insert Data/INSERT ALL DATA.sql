use DbInventory_Management;

-- # DELETE DATA (between)
--DELETE FROM productPrices
--WHERE price_id BETWEEN 42 AND 83;


--SELECT * FROM users;
--SELECT * FROM products;
--SELECT * FROM categories;
--SELECT * FROM productCategories;
--SELECT * FROM productPrices;


--=============================================================================================================================================================

--SELECT * FROM users;

---- # INSERT DATA USERS!!
--INSERT INTO users (username, email, nohp)
--VALUES
--    ('Alice Johnson', 'alice.johnson@example.com', '081234567890'),
--    ('Bob Smith', 'bob.smith@example.com', '082345678901'),
--    ('Charlie Brown', 'charlie.brown@example.com', '083456789012'),
--    ('Diana Prince', 'diana.prince@example.com', '084567890123'),
--    ('Eve Adams', 'eve.adams@example.com', '085678901234'),
--    ('Frank Castle', 'frank.castle@example.com', '086789012345'),
--    ('Grace Kelly', 'grace.kelly@example.com', '087890123456'),
--    ('Henry Ford', 'henry.ford@example.com', '088901234567'),
--    ('Ivy League', 'ivy.league@example.com', '089012345678'),
--    ('Jack Reacher', 'jack.reacher@example.com', '090123456789'),
--    ('Kara Danvers', 'kara.danvers@example.com', '091234567890'),
--    ('Luke Skywalker', 'luke.skywalker@example.com', '092345678901'),
--    ('Mary Jane', 'mary.jane@example.com', '093456789012'),
--    ('Nina Williams', 'nina.williams@example.com', '094567890123'),
--    ('Oliver Queen', 'oliver.queen@example.com', '095678901234'),
--    ('Pamela Isley', 'pamela.isley@example.com', '096789012345'),
--    ('Quentin Tarantino', 'quentin.tarantino@example.com', '097890123456'),
--    ('Rachel Green', 'rachel.green@example.com', '098901234567'),
--    ('Steve Rogers', 'steve.rogers@example.com', '099012345678'),
--    ('Tony Stark', 'tony.stark@example.com', '100123456789'),
--    ('Ursula K. Le Guin', 'ursula.le.guinn@example.com', '101234567890'),
--    ('Victor Frankenstein', 'victor.frankenstein@example.com', '102345678901'),
--    ('Wanda Maximoff', 'wanda.maximoff@example.com', '103456789012'),
--    ('Xander Harris', 'xander.harris@example.com', '104567890123'),
--    ('Yara Shahidi', 'yara.shahidi@example.com', '105678901234'),
--    ('Zane Grey', 'zane.grey@example.com', '106789012345');

--=============================================================================================================================================================

--SELECT * FROM products;

-- # INSERT DATA PRODUCTS!!
--INSERT INTO products (product_name, description, price, stok)
--VALUES
---- BULAN MARET (2025-03-08 14:54:47.027)
    --('Smartphone XYZ', 'Latest smartphone with high performance.', 699.99, 50),
    --('4K Ultra HD TV', 'High-definition television with stunning visuals.', 1199.00, 30),
    --('Bluetooth Headphones', 'Wireless headphones with noise cancellation.', 149.99, 80),
    --('Gaming Laptop', 'High-end laptop designed for gaming.', 1499.00, 25),
    --('Electric Kettle', 'Quick boiling electric kettle.', 29.99, 100),
    --('Coffee Maker', 'Brews delicious coffee in minutes.', 89.99, 60),
    --('Digital Camera', 'High-resolution digital camera.', 499.99, 40),
    --('Smartwatch', 'Wearable smartwatch with fitness tracking.', 199.99, 70),
    --('Laptop Backpack', 'Durable backpack for laptops.', 49.99, 120),
    --('LED Desk Lamp', 'Adjustable LED desk lamp.', 34.99, 90),
    --('Electric Toothbrush', 'Rechargeable electric toothbrush.', 89.00, 75),
    --('Yoga Mat', 'Comfortable mat for yoga practice.', 29.99, 150),
    --('Air Purifier', 'Purifies air and removes pollutants.', 199.99, 35),
    --('Portable Charger', 'Compact charger for on-the-go charging.', 24.99, 110),
    --('Smart Home Hub', 'Central hub for smart home devices.', 129.99, 50),
    --('Wireless Router', 'High-speed wireless router.', 89.99, 60),
    --('Desk Chair', 'Ergonomic desk chair.', 89.99, 45),
    --('VR Headset', 'Virtual reality headset for immersive experiences.', 349.99, 40),
    --('Gaming Mouse', 'Precision gaming mouse.', 49.99, 100),
    --('USB Flash Drive', 'Portable USB storage.', 79.99, 200),
    --('27" Monitor', 'High-resolution computer monitor.', 499.00, 35),
    --('Bluetooth Speaker', 'Portable Bluetooth speaker with great sound.', 119.99, 80),
    --('Keyboard', 'Mechanical keyboard with backlighting.', 89.00, 70),
    --('Home Security Camera', 'Camera for home security.', 249.99, 50),
    --('Smart Thermostat', 'Thermostat with smart features.', 59.99, 60),
    --('Travel Adapter', 'Universal travel adapter.', 99.00, 90),
    --('Laptop Stand', 'Adjustable stand for laptops.', 299.99, 25),
    --('Phone Case', 'Protective case for smartphones.', 79.99, 150),
    --('Electric Scooter', 'Eco-friendly electric scooter.', 399.99, 20),
    --('4K Camera', '4K camera for high-definition recording.', 299.99, 35),
    --('Noise-Canceling Headphones', 'Headphones with noise-canceling technology.', 89.00, 75),
    --('High-Speed Charger', 'Charger with fast charging capabilities.', 129.99, 60),
    --('Gaming Console', 'Next-generation gaming console.', 179.99, 40);

-- BULAN OKTOBER 2025 ()
--INSERT INTO products (product_name, description, price, stok, created_at)
--VALUES
--('Smartphone A1', 'Affordable smartphone with great features.', 499.99, 45, '2025-10-02 09:00:00'),
--('Laptop B2', 'Sleek laptop for everyday use.', 899.99, 20, '2025-10-04 10:30:00'),
--('Bluetooth Earbuds', 'Compact earbuds with excellent sound quality.', 89.99, 80, '2025-10-06 14:15:00'),
--('Fitness Tracker', 'Wearable device to monitor health metrics.', 149.99, 60, '2025-10-08 11:45:00'),
--('Gaming Chair', 'Ergonomic chair designed for gamers.', 199.99, 30, '2025-10-09 13:30:00'),
--('Webcam HD', 'High-definition webcam for streaming.', 69.99, 50, '2025-10-11 15:00:00'),
--('Mechanical Keyboard', 'Responsive keyboard for gamers and typists.', 129.99, 25, '2025-10-13 17:20:00'),
--('Portable SSD', 'Fast storage solution for creatives.', 199.99, 40, '2025-10-16 12:10:00');

--=============================================================================================================================================================

--SELECT * FROM categories;

-- # INSERT DATA CATEGORIES
--INSERT INTO categories (category_name)
--VALUES
--    ('Smartphones'),         -- Untuk produk-produk smartphone
--    ('Televisions'),         -- Untuk produk-produk TV
--    ('Audio Equipment'),     -- Untuk produk-produk audio seperti headphone dan speaker
--    ('Computers'),           -- Untuk laptop dan perangkat gaming
--    ('Kitchen Appliances'),  -- Untuk peralatan dapur seperti ketel listrik dan pembuat kopi
--    ('Cameras'),             -- Untuk kamera digital dan perangkat terkait
--    ('Wearables'),           -- Untuk perangkat yang bisa dipakai seperti smartwatch
--    ('Accessories'),         -- Untuk aksesoris seperti tas laptop dan case smartphone
--    ('Office Equipment'),    -- Untuk peralatan kantor seperti kursi dan lampu meja
--    ('Health & Fitness'),    -- Untuk produk yang berhubungan dengan kesehatan dan kebugaran seperti yoga mat
--    ('Home Appliances'),     -- Untuk peralatan rumah seperti air purifier dan kamera keamanan
--    ('Networking'),          -- Untuk perangkat jaringan seperti router dan hub
--    ('Chargers & Power Banks'), -- Untuk pengisi daya dan power bank
--    ('Gaming'),              -- Untuk konsol gaming dan aksesoris gaming
--    ('Miscellaneous');       -- Untuk produk lainnya yang tidak masuk kategori di atas

--=============================================================================================================================================================

--SELECT * FROM productCategories;

-- # INSERT DATA PRODUCTCATEGORIES
-- Menyisipkan data ke tabel productCategories
--INSERT INTO productCategories (product_id, category_id)
--VALUES
--    -- Smartphone
--    (1, 1),  -- Smartphone XYZ
--    -- Televisions
--    (2, 2),  -- 4K Ultra HD TV
--    -- Audio Equipment
--    (3, 3),  -- Bluetooth Headphones
--    (24, 3), -- Bluetooth Speaker
--    -- Computers
--    (4, 4),  -- Gaming Laptop
--    -- Kitchen Appliances
--    (5, 5),  -- Electric Kettle
--    (6, 5),  -- Coffee Maker
--    -- Cameras
--    (7, 6),  -- Digital Camera
--    (30, 6), -- 4K Camera
--    -- Wearables
--    (8, 7),  -- Smartwatch
--    -- Accessories
--    (9, 8),  -- Laptop Backpack
--    (27, 8), -- Phone Case
--    -- Office Equipment
--    (10, 9), -- LED Desk Lamp
--    (18, 9), -- Desk Chair
--    -- Health & Fitness
--    (11, 10), -- Yoga Mat
--    -- Home Appliances
--    (12, 11), -- Air Purifier
--    -- Networking
--    (13, 12), -- Wireless Router
--    -- Chargers & Power Banks
--    (14, 13), -- Portable Charger
--    (31, 13), -- High-Speed Charger
--    -- Gaming
--    (15, 14), -- VR Headset
--    (16, 14), -- Gaming Mouse
--    (32, 14), -- Gaming Console
--    -- Miscellaneous
--    (17, 15), -- USB Flash Drive
--    (22, 15), -- Keyboard
--    (23, 15), -- Laptop Stand
--    (25, 15), -- Electric Scooter
--    (29, 15); -- Noise-Canceling Headphones
--(33, 4),
--(34, 1),
--(35, 4),
--(36, 3),
--(37, 7),
--(38, 10),
--(39, 3),
--(40, 4),
--(41, 4);

-- Bulan OKTOBER 
--INSERT INTO productCategories (product_id, category_id)
--VALUES
--(42, 11); -- Home Security Camera ke kategori Home Appliances
--(43, 15); -- VR Headset ke kategori Gaming

--=============================================================================================================================================================

--SELECT * FROM productPrices;

--INSERT INTO productPrices (product_id, original_price, effective_date) VALUES
--(1, 583.33, GETDATE()),   -- Smartphone XYZ
--(2, 999.17, GETDATE()),   -- 4K Ultra HD TV
--(3, 124.99, GETDATE()),   -- Bluetooth Headphones
--(4, 1249.17, GETDATE()),  -- Gaming Laptop
--(5, 24.99, GETDATE()),    -- Electric Kettle
--(6, 74.99, GETDATE()),    -- Coffee Maker
--(7, 416.66, GETDATE()),    -- Digital Camera
--(8, 166.66, GETDATE()),    -- Smartwatch
--(9, 41.66, GETDATE()),     -- Laptop Backpack
--(10, 29.16, GETDATE()),    -- LED Desk Lamp
--(11, 74.16, GETDATE()),    -- Electric Toothbrush
--(12, 24.99, GETDATE()),    -- Yoga Mat
--(13, 166.66, GETDATE()),    -- Air Purifier
--(14, 20.83, GETDATE()),     -- Portable Charger
--(15, 108.33, GETDATE()),    -- Smart Home Hub
--(16, 74.99, GETDATE()),     -- Wireless Router
--(17, 74.99, GETDATE()),     -- Desk Chair
--(18, 291.66, GETDATE()),    -- VR Headset
--(19, 41.66, GETDATE()),     -- Gaming Mouse
--(20, 66.66, GETDATE()),     -- USB Flash Drive
--(21, 415.83, GETDATE()),    -- 27" Monitor
--(22, 99.99, GETDATE()),     -- Bluetooth Speaker
--(23, 74.16, GETDATE()),     -- Keyboard
--(24, 208.33, GETDATE()),    -- Home Security Camera
--(25, 49.99, GETDATE()),     -- Smart Thermostat
--(26, 82.49, GETDATE()),     -- Travel Adapter
--(27, 249.99, GETDATE()),    -- Laptop Stand
--(28, 66.66, GETDATE()),     -- Phone Case
--(29, 333.33, GETDATE()),    -- Electric Scooter
--(30, 249.99, GETDATE()),    -- 4K Camera
--(31, 74.16, GETDATE()),     -- Noise-Canceling Headphones
--(32, 108.33, GETDATE()),    -- High-Speed Charger
--(33, 149.99, GETDATE()),    -- Gaming Console
--(34, 416.66, GETDATE()),    -- Smartphone A1
--(35, 749.99, GETDATE()),    -- Laptop B2
--(36, 74.99, GETDATE()),     -- Bluetooth Earbuds
--(37, 124.99, GETDATE()),    -- Fitness Tracker
--(38, 166.66, GETDATE()),    -- Gaming Chair
--(39, 58.33, GETDATE()),     -- Webcam HD
--(40, 108.33, GETDATE()),    -- Mechanical Keyboard
--(41, 166.66, GETDATE());     -- Portable SSD

--=============================================================================================================================================================

--SELECT * FROM orders;

-- BULAN Februari (Lama)
--INSERT INTO orders (user_id, total_price, status, order_date)
--VALUES
--    (1, 1399.98, 'Completed', '2025-02-01 10:00:00'),   -- Order ID 1
--    (2, 1199.00, 'Completed', '2025-02-02 12:30:00'),   -- Order ID 2
--    (3, 479.96, 'Completed', '2025-02-03 14:15:00'),    -- Order ID 3
--    (4, 1499.00, 'Completed', '2025-02-04 09:45:00'),   -- Order ID 4
--    (5, 29.99, 'Completed', '2025-02-05 11:00:00'),     -- Order ID 5
--    (6, 179.98, 'Completed', '2025-02-06 15:30:00'),    -- Order ID 6
--    (7, 499.99, 'Completed', '2025-02-07 10:00:00'),    -- Order ID 7
--    (8, 399.98, 'Completed', '2025-02-08 12:00:00'),    -- Order ID 8
--    (9, 49.99, 'Completed', '2025-02-09 13:15:00'),     -- Order ID 9
--    (10, 149.97, 'Completed', '2025-02-10 11:45:00'),   -- Order ID 10
--    (11, 89.00, 'Completed', '2025-02-11 16:30:00'),    -- Order ID 11
--    (12, 29.99, 'Completed', '2025-02-12 18:00:00'),    -- Order ID 12
--    (13, 199.99, 'Completed', '2025-02-13 10:00:00'),   -- Order ID 13
--    (14, 24.99, 'Completed', '2025-02-14 12:00:00'),    -- Order ID 14
--    (15, 129.99, 'Completed', '2025-02-15 14:00:00'),   -- Order ID 15
--    (16, 179.98, 'Completed', '2025-02-16 15:00:00'),   -- Order ID 16
--    (17, 179.98, 'Completed', '2025-02-17 17:00:00'),   -- Order ID 17
--    (18, 349.99, 'Completed', '2025-02-18 19:00:00'),   -- Order ID 18
--    (19, 49.99, 'Completed', '2025-02-19 10:30:00'),    -- Order ID 19
--    (20, 159.98, 'Completed', '2025-02-20 12:30:00'),   -- Order ID 20
--    (21, 499.00, 'Completed', '2025-02-21 14:30:00'),   -- Order ID 21
--    (22, 239.98, 'Completed', '2025-02-22 16:00:00'),   -- Order ID 22
--    (23, 89.00, 'Completed', '2025-02-23 18:00:00'),    -- Order ID 23
--    (24, 249.99, 'Completed', '2025-02-24 10:00:00'),   -- Order ID 24
--    (25, 59.99, 'Completed', '2025-02-25 12:00:00'),    -- Order ID 25
--    (26, 198.00, 'Completed', '2025-02-26 14:00:00');   -- Order ID 26

-- BULAN Maret (Terbaru)
--INSERT INTO orders (user_id, total_price, status, order_date)
--VALUES
--    -- User 1 (-- Order ID 27)
--    (1, 849.99, 'Completed', '2025-03-01 10:30:00'),

--    -- User 2
--    (2, 2698.00, 'Processing', '2025-03-02 11:00:00'),

--    -- User 3
--    (3, 29.99, 'Completed', '2025-03-03 12:15:00'),

--    -- User 4
--    (4, 179.98, 'Shipped', '2025-03-04 13:20:00'),

--    -- User 5
--    (5, 499.99, 'Delivered', '2025-03-05 14:45:00'),

--    -- User 6 (Repeat Order)
--    (6, 29.99, 'Completed', '2025-03-06 09:10:00'),
--    (6, 199.99, 'Processing', '2025-03-07 10:25:00'),

--    -- User 7
--    (7, 99.98, 'Completed', '2025-03-08 11:35:00'),

--    -- User 8
--    (8, 69.98, 'Shipped', '2025-03-09 12:50:00'),

--    -- User 9
--    (9, 89.00, 'Delivered', '2025-03-10 14:05:00'),

--    -- User 10 (Repeat Order)
--    (10, 29.99, 'Completed', '2025-03-11 15:10:00'),
--    (10, 199.99, 'Processing', '2025-03-12 16:15:00'),

--    -- User 11
--    (11, 24.99, 'Completed', '2025-03-13 17:20:00'),

--    -- User 12
--    (12, 129.99, 'Shipped', '2025-03-14 18:25:00'),

--    -- User 13
--    (13, 89.99, 'Delivered', '2025-03-15 19:30:00'),

--    -- User 14
--    (14, 89.00, 'Completed', '2025-03-16 20:35:00'),

--    -- User 15
--    (15, 349.99, 'Processing', '2025-03-17 21:40:00'),

--    -- User 16
--    (16, 99.98, 'Completed', '2025-03-18 22:45:00'),

--    -- User 17
--    (17, 79.99, 'Shipped', '2025-03-19 23:50:00'),

--    -- User 18
--    (18, 499.00, 'Delivered', '2025-03-20 10:00:00'),

--    -- User 19 (Repeat Order)
--    (19, 119.99, 'Completed', '2025-03-21 11:05:00'),
--    (19, 89.00, 'Processing', '2025-03-22 12:10:00'),

--    -- User 20
--    (20, 249.99, 'Completed', '2025-03-23 13:15:00'),

--    -- User 21
--    (21, 59.99, 'Shipped', '2025-03-24 14:20:00'),

--    -- User 22
--    (22, 99.00, 'Delivered', '2025-03-25 15:25:00'),

--    -- User 23
--    (23, 338.96, 'Completed', '2025-03-26 16:30:00'),

--    -- User 24
--    (24, 777.97, 'Processing', '2025-03-27 17:35:00'),

--    -- User 25 (-- Order ID 54)
--    (25, 588.00, 'Shipped', '2025-03-28 18:40:00');

--=============================================================================================================================================================

SELECT * FROM orderDetails;
SELECT * FROM orders;

-- BULAN Februari (Lama)
--INSERT INTO orderDetails (order_id, product_id, quantity, price_each)
--VALUES
--(1, 1, 2, 699.99),       -- Order ID 1: Smartphone XYZ
--(2, 2, 1, 1199.00),      -- Order ID 2: 4K Ultra HD TV
--(3, 3, 2, 149.99),       -- Order ID 3: Bluetooth Headphones
--(3, 16, 2, 89.99),       -- Order ID 3: Wireless Router
--(4, 4, 1, 1499.00),      -- Order ID 4: Gaming Laptop
--(5, 5, 1, 29.99),        -- Order ID 5: Electric Kettle
--(6, 6, 2, 89.99),        -- Order ID 6: Coffee Maker
--(7, 7, 1, 499.99),       -- Order ID 7: Digital Camera
--(8, 8, 2, 199.99),       -- Order ID 8: Smartwatch
--(9, 9, 1, 49.99),        -- Order ID 9: Laptop Backpack
--(10, 10, 2, 34.99),      -- Order ID 10: LED Desk Lamp
--(10, 20, 1, 79.99),      -- Order ID 10: USB Flash Drive
--(11, 11, 1, 89.00),      -- Order ID 11: Electric Toothbrush
--(12, 12, 1, 29.99),      -- Order ID 12: Yoga Mat
--(13, 13, 1, 199.99),     -- Order ID 13: Air Purifier
--(14, 14, 1, 24.99),      -- Order ID 14: Portable Charger
--(15, 15, 1, 129.99),     -- Order ID 15: Smart Home Hub
--(16, 16, 2, 89.99),      -- Order ID 16: Wireless Router
--(17, 17, 2, 89.99),      -- Order ID 17: Desk Chair
--(18, 18, 1, 349.99),     -- Order ID 18: VR Headset
--(19, 19, 1, 49.99),      -- Order ID 19: Gaming Mouse
--(20, 20, 2, 79.99),      -- Order ID 20: USB Flash Drive
--(21, 21, 1, 499.00),     -- Order ID 21: 27" Monitor
--(22, 22, 2, 119.99),     -- Order ID 22: Bluetooth Speaker
--(23, 23, 1, 89.00),      -- Order ID 23: Keyboard
--(24, 24, 1, 249.99),     -- Order ID 24: Home Security Camera
--(25, 25, 1, 59.99),      -- Order ID 25: Smart Thermostat
--(26, 26, 2, 99.00);      -- Order ID 26: Travel Adapter


-- BULAN MARET (Terbaru)
--INSERT INTO orderDetails (order_id, product_id, quantity, price_each)
--VALUES
    --(27, 1, 1, 699.99),     -- Smartphone XYZ
    --(27, 3, 1, 149.99),     -- Bluetooth Headphones
    --(28, 2, 1, 1199.00),    -- 4K Ultra HD TV
    --(28, 4, 1, 1499.00),    -- Gaming Laptop
    --(29, 5, 1, 29.99),      -- Electric Kettle
    --(30, 6, 2, 89.99),      -- Coffee Maker
    --(31, 7, 1, 499.99),     -- Digital Camera
    --(32, 5, 1, 29.99),      -- Electric Kettle
    --(33, 8, 1, 199.99),     -- Smartwatch
    --(34, 9, 2, 49.99),      -- Laptop Backpack
    --(35, 10, 2, 34.99),     -- LED Desk Lamp
    --(36, 11, 1, 89.00),    -- Electric Toothbrush
    --(37, 12, 1, 29.99),    -- Yoga Mat
    --(38, 13, 1, 199.99),   -- Air Purifier
    --(39, 14, 1, 24.99),    -- Portable Charger
    --(40, 15, 1, 129.99),   -- Smart Home Hub
    --(41, 16, 1, 89.99),    -- Wireless Router
    --(42, 17, 1, 89.99),    -- Desk Chair
    --(43, 18, 1, 349.99),   -- VR Headset
    --(44, 19, 2, 49.99),    -- Gaming Mouse
    --(45, 20, 1, 79.99),    -- USB Flash Drive
    --(46, 21, 1, 499.00),   -- 27" Monitor
    --(47, 22, 1, 119.99),   -- Bluetooth Speaker
    --(48, 23, 1, 89.00),    -- Keyboard
    --(49, 24, 1, 249.99),   -- Home Security Camera
    --(50, 25, 1, 59.99),    -- Smart Thermostat
    --(51, 26, 1, 99.00),    -- Travel Adapter
	--(52, 17, 2, 89.99),    -- Desk Chair
	--(52, 10, 2, 34.99),    -- LED Desk Lamp
	--(52, 23, 1, 89.00),    -- Keyboard
	--(53, 23, 1, 89.00),    -- Keyboard
	--(53, 21, 1, 499.00),    -- 27'' Monitor
	--(53, 10, 2, 34.99),    -- LED Desk Lamp
	--(53, 22, 1, 119.00),    -- Bluetooth Speaker
	--(54, 23, 1, 89.00),    -- Keyboard
	--(54, 21, 1, 499.00);    -- 27'' Monitor



