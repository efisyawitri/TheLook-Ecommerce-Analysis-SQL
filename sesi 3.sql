-- mendapatkan jumlah order
SELECT COUNT(*) AS jumlah_order
FROM bigquery-public-data.thelook_ecommerce.orders;

-- mejumlahkan nilai
SELECT SUM(num_of_item) jumlah_item
FROM bigquery-public-data.thelook_ecommerce.orders;

--mengihtung rata-rata
SELECT AVG(num_of_item) avg_item
FROM bigquery-public-data.thelook_ecommerce.orders;

--ringkasan agregasi dalam 1 query
SELECT 
 COUNT(*) jumlah_order,
 SUM(num_of_item) jumlah_item,
 AVG(num_of_item) avg_item,
 MIN(num_of_item) min_item,
 MAX(num_of_item) max_item
FROM bigquery-public-data.thelook_ecommerce.orders;


--mencari MIN MAX 
SELECT
 MIN(num_of_item) item_terkecil, 
 MAX(num_of_item) item_terbesar
FROM bigquery-public-data.thelook_ecommerce.orders;

SELECT 
 MIN(cost) min_cost,
 MAX(cost) max_cost
FROM bigquery-public-data.thelook_ecommerce.products;

SELECT 
 MIN(created_at) earliest_trx, 
 MAX(created_at) latest_trx
FROM bigquery-public-data.thelook_ecommerce.orders;


SELECT 
 MIN(created_at) earliest_trx, 
 MAX(created_at) latest_trx
FROM bigquery-public-data.thelook_ecommerce.orders;

--ringkasan dengan Group By 
SELECT
 status,
 COUNT(*) jumlah_order
FROM bigquery-public-data.thelook_ecommerce.orders
GROUP BY 1
ORDER BY 2 DESC;

SELECT
 status,
 COUNT(*) jumlah_order,
 AVG(num_of_item) avg_item
FROM bigquery-public-data.thelook_ecommerce.orders
GROUP BY 1
ORDER BY 2 DESC;

--menggabungkan agregasi count dan dinstinc 

SELECT COUNT(DISTINCT status) jumlah_status_unique, COUNT(DISTINCT gender) jumlah_gender_unique 
FROM bigquery-public-data.thelook_ecommerce.orders;
 
SELECT COUNT(DISTINCT id) jumlah_id, COUNT(DISTINCT order_id) jumlah_order
FROM bigquery-public-data.thelook_ecommerce.order_items;



