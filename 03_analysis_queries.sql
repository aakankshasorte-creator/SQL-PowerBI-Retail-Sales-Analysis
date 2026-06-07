Query 1 — Total Revenue & Profit by Category
SELECT 
    p.category,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity) AS units_sold,
    ROUND(SUM(oi.sale_price)::numeric, 2) AS total_revenue,
    ROUND(SUM(oi.quantity * p.cost_price)::numeric, 2) AS total_cost,
    ROUND((SUM(oi.sale_price) - SUM(oi.quantity * p.cost_price))::numeric, 2) AS gross_profit,
    ROUND(((SUM(oi.sale_price) - SUM(oi.quantity * p.cost_price)) 
           / SUM(oi.sale_price) * 100)::numeric, 1) AS profit_margin_pct
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.status = 'Completed'
GROUP BY p.category
ORDER BY total_revenue DESC;
Query 2 — Monthly Revenue Trend
sql
SELECT 
    TO_CHAR(o.order_date, 'YYYY-MM') AS month,
    COUNT(DISTINCT o.order_id) AS orders,
    ROUND(SUM(oi.sale_price)::numeric, 2) AS monthly_revenue,
    ROUND(AVG(oi.sale_price)::numeric, 2) AS avg_order_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY TO_CHAR(o.order_date, 'YYYY-MM')
ORDER BY month;
Query 3 — Customer Segment Performance
sql
SELECT 
    c.segment,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.sale_price)::numeric, 2) AS total_revenue,
    ROUND((SUM(oi.sale_price) / COUNT(DISTINCT c.customer_id))::numeric, 2) AS revenue_per_customer,
    ROUND((COUNT(DISTINCT o.order_id)::numeric / COUNT(DISTINCT c.customer_id)), 1) AS orders_per_customer
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY c.segment
ORDER BY total_revenue DESC;
Query 4 — Top 5 Products by Revenue
sql
SELECT 
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    ROUND(SUM(oi.sale_price)::numeric, 2) AS total_revenue,
    ROUND(AVG(oi.discount * 100)::numeric, 1) AS avg_discount_pct
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY p.product_name, p.category
ORDER BY total_revenue DESC
LIMIT 5;
Query 5 — Regional Sales Performance
sql
SELECT 
    o.region,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.sale_price)::numeric, 2) AS total_revenue,
    ROUND(AVG(oi.sale_price)::numeric, 2) AS avg_order_value,
    COUNT(CASE WHEN o.status = 'Returned' THEN 1 END) AS returns,
    ROUND((COUNT(CASE WHEN o.status = 'Returned' THEN 1 END)::numeric / 
           COUNT(DISTINCT o.order_id) * 100)::numeric, 1) AS return_rate_pct
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.region
ORDER BY total_revenue DESC;
Query 6 — Customer Order Frequency (for CRM insight)
sql
SELECT 
    c.customer_name,
    c.segment,
    c.city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.sale_price)::numeric, 2) AS lifetime_value,
    MIN(o.order_date) AS first_order,
    MAX(o.order_date) AS last_order,
    (MAX(o.order_date) - MIN(o.order_date)) AS customer_lifespan_days
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY c.customer_name, c.segment, c.city
ORDER BY lifetime_value DESC;

