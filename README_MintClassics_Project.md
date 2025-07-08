
# Mint Classics Warehouse Optimization Project

## Project Summary
This project analyzes the inventory and sales data of Mint Classics, a company considering closing one of its warehouses to reduce operational costs while still maintaining customer service quality. Using MySQL Workbench, I examined product sales, warehouse stock, and performed a what-if analysis to form data-driven recommendations.

## Dataset
The analysis is based on the `mintclassics` relational database, which contains tables such as `products`, `warehouses`, `orderdetails`, and more.

## SQL Scripts Included
All SQL queries used in this project are saved in [`2 mint_classics_project_queries.sql`](./2 mint_classics_project_queries.sql):
- Total stock by warehouse
- Sales volume by warehouse
- Top 10 best-selling products
- Bottom 10 slowest-selling products
- Low-sellers with warehouse codes
- Inventory 5% reduction simulation

## Key Findings
- **Warehouse B** holds the most stock and has the highest total units sold, but also stores several of the least-selling products.
- **Warehouse D** has the lowest inventory and contributes minimally to overall sales — making it a candidate for closure.
- Several products have high inventory but extremely low sales volume.

## What-If Analysis
Simulated reducing inventory by 5% across all products. Results showed:
- Top sellers are still sufficiently stocked.
- Significant room for storage optimization and cost savings.

## Final Recommendations
- **Close Warehouse D**: Low utilization and minimal contribution to sales.
- **Audit Warehouse B**: Remove or relocate low-performing products.
- **Discontinue or discount low-sellers** to free space.
- **Implement a 5% inventory reduction** company-wide to lower carrying costs without harming operations.

## How to Use
1. Clone or download this repository.
2. Open `mint_classics_project_queries.sql` in MySQL Workbench.
3. Run each query after importing the `mintclassicsDB.sql` database.

---

 **Submitted for**: Coursera SQL Capstone Project  
 **Author**: Raj Mishra  
 **Portfolio**: _[Add your link here if you host it online]_  
