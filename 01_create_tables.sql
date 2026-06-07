Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(50),
    country VARCHAR(50),
    segment VARCHAR(30),        -- 'Consumer', 'Corporate', 'SMB'
    join_date DATE
);

-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(50),       -- 'Electronics', 'Furniture', 'Office Supplies'
    sub_category VARCHAR(50),
    unit_price DECIMAL(10,2),
    cost_price DECIMAL(10,2)
);

-- Create orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    ship_date DATE,
    region VARCHAR(50),
    status VARCHAR(30)          -- 'Completed', 'Returned', 'Pending'
);

-- Create order_items table
CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    discount DECIMAL(4,2),
    sale_price DECIMAL(10,2)
);
