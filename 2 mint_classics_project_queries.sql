-- Query 1: Total Stock by Warehouse
SELECT 
  warehouseCode, 
  SUM(quantityInStock) AS totalStock 
FROM products 
GROUP BY warehouseCode 
ORDER BY totalStock DESC;

-- Query 2: Total Sales Volume by Warehouse
SELECT 
  p.warehouseCode,
  SUM(od.quantityOrdered) AS totalQuantity
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.warehouseCode
ORDER BY totalQuantity DESC;

-- Query 3: Top 10 Best-Selling Products
SELECT 
  p.productCode,
  p.productName,
  SUM(od.quantityOrdered) AS totalSold
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName
ORDER BY totalSold DESC
LIMIT 10;

-- Query 4: Bottom 10 Worst-Selling Products
SELECT 
  p.productCode,
  p.productName,
  SUM(od.quantityOrdered) AS totalSold
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName
ORDER BY totalSold ASC
LIMIT 10;

-- Query 5: Worst-Selling Products with Warehouse Info
SELECT 
  p.productCode,
  p.productName,
  p.warehouseCode,
  SUM(od.quantityOrdered) AS totalSold
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName, p.warehouseCode
ORDER BY totalSold ASC
LIMIT 10;

-- Query 6: Simulate 5% Inventory Reduction
SELECT 
  productCode,
  productName,
  quantityInStock,
  ROUND(quantityInStock * 0.95) AS quantityAfterReduction
FROM products
ORDER BY quantityInStock DESC;