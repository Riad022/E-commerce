-- Insert data into the category table
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Graphics Processing Units for computers', 'GPUs');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Central Processing Units for computers', 'CPUs');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Computer memory modules', 'RAM');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Storage devices for computers', 'Storage');
INSERT INTO category (id, description, name) VALUES (nextval('category_seq'), 'Displays for computers', 'Monitors');

-- Insert data into the product table for GPUs
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'NVIDIA GeForce RTX 3080', 'RTX 3080', 50, 699.99, (select id from category where name = 'GPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'AMD Radeon RX 6800 XT', 'RX 6800 XT', 45, 649.99, (select id from category where name = 'GPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'NVIDIA GeForce RTX 3070', 'RTX 3070', 60, 499.99, (select id from category where name = 'GPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'AMD Radeon RX 6700 XT', 'RX 6700 XT', 40, 479.99, (select id from category where name = 'GPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'NVIDIA GeForce RTX 3060', 'RTX 3060', 70, 329.99, (select id from category where name = 'GPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'AMD Radeon RX 6600 XT', 'RX 6600 XT', 50, 379.99, (select id from category where name = 'GPUs'));

-- Insert data into the product table for CPUs
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Intel Core i9-11900K', 'Core i9-11900K', 30, 539.99, (select id from category where name = 'CPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'AMD Ryzen 9 5900X', 'Ryzen 9 5900X', 35, 549.99, (select id from category where name = 'CPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Intel Core i7-11700K', 'Core i7-11700K', 40, 399.99, (select id from category where name = 'CPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'AMD Ryzen 7 5800X', 'Ryzen 7 5800X', 50, 449.99, (select id from category where name = 'CPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Intel Core i5-11600K', 'Core i5-11600K', 60, 269.99, (select id from category where name = 'CPUs'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'AMD Ryzen 5 5600X', 'Ryzen 5 5600X', 65, 299.99, (select id from category where name = 'CPUs'));

-- Insert data into the product table for RAM
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Corsair Vengeance LPX 16GB', 'Vengeance LPX 16GB', 100, 89.99, (select id from category where name = 'RAM'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'G.Skill Trident Z RGB 16GB', 'Trident Z RGB 16GB', 80, 99.99, (select id from category where name = 'RAM'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Crucial Ballistix 16GB', 'Ballistix 16GB', 120, 79.99, (select id from category where name = 'RAM'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Kingston HyperX Fury 16GB', 'HyperX Fury 16GB', 90, 84.99, (select id from category where name = 'RAM'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Corsair Dominator Platinum 32GB', 'Dominator Platinum 32GB', 70, 179.99, (select id from category where name = 'RAM'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'G.Skill Ripjaws V 32GB', 'Ripjaws V 32GB', 75, 159.99, (select id from category where name = 'RAM'));

-- Insert data into the product table for Storage
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Samsung 970 EVO Plus 1TB', '970 EVO Plus 1TB', 100, 149.99, (select id from category where name = 'Storage'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Western Digital Blue 1TB HDD', 'WD Blue 1TB HDD', 150, 49.99, (select id from category where name = 'Storage'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Seagate Barracuda 2TB HDD', 'Barracuda 2TB HDD', 130, 59.99, (select id from category where name = 'Storage'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Crucial MX500 1TB SSD', 'MX500 1TB SSD', 110, 99.99, (select id from category where name = 'Storage'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Samsung T7 Portable SSD 1TB', 'T7 Portable SSD 1TB', 80, 139.99, (select id from category where name = 'Storage'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'SanDisk Ultra 3D NAND 1TB SSD', 'Ultra 3D NAND 1TB SSD', 90, 109.99, (select id from category where name = 'Storage'));

-- Insert data into the product table for Monitors
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Dell UltraSharp 27-inch 4K Monitor', 'UltraSharp 27 4K', 40, 499.99, (select id from category where name = 'Monitors'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'ASUS ROG Swift 27-inch 144Hz Monitor', 'ROG Swift 27 144Hz', 35, 599.99, (select id from category where name = 'Monitors'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Acer Predator 24-inch 165Hz Monitor', 'Predator 24 165Hz', 50, 399.99, (select id from category where name = 'Monitors'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'LG UltraGear 34-inch Curved Monitor', 'UltraGear 34 Curved', 30, 699.99, (select id from category where name = 'Monitors'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'Samsung Odyssey G9 49-inch Monitor', 'Odyssey G9 49', 20, 1299.99, (select id from category where name = 'Monitors'));
INSERT INTO product (id, description, name, available_quantity, price, category_id) VALUES (nextval('product_seq'), 'BenQ PD3200U 32-inch 4K Monitor', 'PD3200U 32 4K', 25, 699.99, (select id from category where name = 'Monitors'));
