Insert sample data

-- Insert customers
INSERT INTO customers (customer_name, email, city, country, segment, join_date) VALUES
('James Wilson', 'james.w@email.com', 'London', 'UK', 'Corporate', '2022-01-15'),
('Priya Sharma', 'priya.s@email.com', 'Manchester', 'UK', 'Consumer', '2022-03-22'),
('David Chen', 'david.c@email.com', 'Edinburgh', 'UK', 'SMB', '2022-05-10'),
('Sarah Ahmed', 'sarah.a@email.com', 'Birmingham', 'UK', 'Consumer', '2022-07-18'),
('Tom Richards', 'tom.r@email.com', 'Leeds', 'UK', 'Corporate', '2022-09-05'),
('Emma Davis', 'emma.d@email.com', 'Glasgow', 'UK', 'SMB', '2023-01-12'),
('Raj Patel', 'raj.p@email.com', 'Bristol', 'UK', 'Consumer', '2023-03-28'),
('Lucy Thompson', 'lucy.t@email.com', 'Cardiff', 'UK', 'Corporate', '2023-06-14'),
('Ali Hassan', 'ali.h@email.com', 'London', 'UK', 'SMB', '2023-08-20'),
('Nina Brown', 'nina.b@email.com', 'Liverpool', 'UK', 'Consumer', '2023-11-03');

-- Insert products
INSERT INTO products (product_name, category, sub_category, unit_price, cost_price) VALUES
('Dell Laptop 15"', 'Electronics', 'Computers', 899.99, 620.00),
('iPhone 14', 'Electronics', 'Phones', 799.99, 540.00),
('Office Chair Pro', 'Furniture', 'Chairs', 349.99, 180.00),
('Standing Desk', 'Furniture', 'Desks', 549.99, 290.00),
('Printer Paper A4', 'Office Supplies', 'Paper', 12.99, 5.00),
('Stapler Heavy Duty', 'Office Supplies', 'Fasteners', 24.99, 9.00),
('Monitor 27"', 'Electronics', 'Monitors', 459.99, 290.00),
('Wireless Mouse', 'Electronics', 'Accessories', 49.99, 18.00),
('Filing Cabinet', 'Furniture', 'Storage', 199.99, 95.00),
('Whiteboard 120cm', 'Office Supplies', 'Presentation', 89.99, 38.00);

-- Insert orders
INSERT INTO orders (customer_id, order_date, ship_date, region, status) VALUES
(1, '2023-01-10', '2023-01-13', 'South', 'Completed'),
(2, '2023-01-25', '2023-01-28', 'North', 'Completed'),
(3, '2023-02-08', '2023-02-11', 'Scotland', 'Completed'),
(4, '2023-02-20', '2023-02-24', 'Midlands', 'Returned'),
(5, '2023-03-05', '2023-03-08', 'South', 'Completed'),
(6, '2023-03-18', '2023-03-22', 'Scotland', 'Completed'),
(7, '2023-04-02', '2023-04-05', 'South West', 'Completed'),
(8, '2023-04-15', '2023-04-19', 'Wales', 'Pending'),
(9, '2023-05-01', '2023-05-04', 'South', 'Completed'),
(10, '2023-05-20', '2023-05-23', 'North', 'Completed'),
(1, '2023-06-08', '2023-06-11', 'South', 'Completed'),
(3, '2023-06-25', '2023-06-28', 'Scotland', 'Completed'),
(5, '2023-07-10', '2023-07-13', 'South', 'Returned'),
(7, '2023-07-28', '2023-07-31', 'South West', 'Completed'),
(2, '2023-08-14', '2023-08-17', 'North', 'Completed'),
(4, '2023-08-30', '2023-09-02', 'Midlands', 'Completed'),
(6, '2023-09-12', '2023-09-15', 'Scotland', 'Completed'),
(8, '2023-09-28', '2023-10-01', 'Wales', 'Completed'),
(9, '2023-10-15', '2023-10-18', 'South', 'Completed'),
(10, '2023-11-02', '2023-11-05', 'North', 'Completed'),
(1, '2023-11-20', '2023-11-23', 'South', 'Completed'),
(2, '2023-12-05', '2023-12-08', 'North', 'Completed'),
(3, '2023-12-18', '2023-12-21', 'Scotland', 'Completed'),
(5, '2024-01-08', '2024-01-11', 'South', 'Completed'),
(7, '2024-01-25', '2024-01-28', 'South West', 'Completed');

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, discount, sale_price) VALUES
(1, 1, 2, 0.10, 1619.98), (1, 7, 1, 0.00, 459.99),
(2, 3, 1, 0.05, 332.49), (2, 8, 2, 0.00, 99.98),
(3, 2, 1, 0.00, 799.99), (3, 5, 5, 0.10, 58.46),
(4, 4, 1, 0.15, 467.49), (4, 6, 2, 0.00, 49.98),
(5, 1, 1, 0.00, 899.99), (5, 8, 1, 0.10, 44.99),
(6, 3, 2, 0.10, 629.98), (6, 10, 1, 0.00, 89.99),
(7, 2, 1, 0.05, 759.99), (7, 5, 10, 0.00, 129.90),
(8, 4, 1, 0.00, 549.99), (8, 9, 1, 0.10, 179.99),
(9, 7, 2, 0.10, 827.98), (9, 8, 3, 0.00, 149.97),
(10, 1, 1, 0.05, 854.99), (10, 6, 4, 0.00, 99.96),
(11, 2, 2, 0.10, 1439.98), (11, 10, 2, 0.05, 170.98),
(12, 3, 1, 0.00, 349.99), (12, 5, 20, 0.10, 233.82),
(13, 1, 1, 0.15, 764.99), (13, 7, 1, 0.00, 459.99),
(14, 4, 2, 0.10, 989.98), (14, 8, 2, 0.00, 99.98),
(15, 2, 1, 0.00, 799.99), (15, 9, 1, 0.05, 189.99),
(16, 3, 3, 0.10, 944.97), (16, 6, 5, 0.00, 124.95),
(17, 1, 2, 0.05, 1709.98), (17, 10, 1, 0.00, 89.99),
(18, 4, 1, 0.00, 549.99), (18, 5, 15, 0.10, 175.37),
(19, 7, 1, 0.10, 413.99), (19, 8, 4, 0.05, 189.96),
(20, 2, 2, 0.10, 1439.98), (20, 6, 3, 0.00, 74.97),
(21, 1, 1, 0.00, 899.99), (21, 3, 1, 0.10, 314.99),
(22, 4, 1, 0.05, 522.49), (22, 7, 1, 0.10, 413.99),
(23, 2, 1, 0.00, 799.99), (23, 9, 2, 0.05, 379.98),
(24, 1, 2, 0.10, 1619.98), (24, 5, 8, 0.00, 103.92),
(25, 3, 2, 0.05, 664.98), (25, 10, 3, 0.10, 242.97);
