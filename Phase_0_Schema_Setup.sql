CREATE SCHEMA IF NOT EXISTS supply_chain_opt;
USE supply_chain_opt;

CREATE TABLE IF NOT EXISTS inventory (
  product_id INT,
  product_name STRING,
  current_stock INT,
  reorder_point INT,
  unit_cost DOUBLE,
  lead_time_days INT
);

CREATE TABLE IF NOT EXISTS vendor_logs (
  order_id STRING,
  vendor_id STRING,
  order_date DATE,
  delivery_date DATE,
  quantity_ordered INT,
  quality_score DOUBLE
);

SELECT 
  product_name, 
  current_stock, 
  reorder_point, 
  replenishment_cost 
FROM supply_chain_opt.reorder_alerts 
ORDER BY replenishment_cost DESC 
LIMIT 100;
