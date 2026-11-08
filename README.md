# Naija_Telecommunications_Limited
# Naija Telecommunications Limited – Customer & Revenue Analysis (SQL)

## Project Overview

This project explores customer and subscription data for a fictional telecommunications company, **Naija Telecommunications Limited**. The aim is to use SQL to understand customer behaviour, subscription-plan performance, revenue distribution, and differences across states and regions.

The analysis was carried out in **PostgreSQL using pgAdmin 4**. It demonstrates how relational data can be queried and transformed into useful information for business decision-making.

## SQL Query Images
![SQL code in pgAdmin](images/Screenshot%2026-11-08%203621.png)

## Business Objectives

The project addresses questions such as:

- How much revenue does each subscription plan generate?
- Which states contribute the most to total revenue?
- What is the average revenue generated across regions?
- How many customers are subscribed to each plan?
- Which payment methods contribute most to revenue?
- How do customer age groups vary?
- Who are the customers generating the highest monthly revenue?
- Which customers generate revenue above the overall average?

## Dataset

The project uses customer and subscription data.

| Dataset / Table | Description |
|---|---|
| `customers` | Customer details, including customer ID, name, gender, age, state, region, join date, plan type, and status. |
| `subscriptions` | Subscription details, including subscription ID, customer ID, subscription date, plan type, monthly fee, data usage, call minutes, SMS count, payment method, and revenue. |

The repository includes the customer CSV file and the SQL script used to create and query the tables.

## Tools Used

- **PostgreSQL** – querying and analysing relational data.
- **pgAdmin 4** – database management and SQL execution.

## SQL Skills Demonstrated

The analysis applies the following SQL concepts:

- `CREATE TABLE` – creating database tables.
- `SELECT` – retrieving records and relevant fields.
- `INNER JOIN` – combining customer and subscription records using `customer_id`.
- Aggregate functions – `SUM()`, `AVG()`, `COUNT()`, `MIN()`, and `MAX()`.
- `GROUP BY` and `HAVING` – summarising and filtering grouped results.
- `WHERE` and `ORDER BY` – filtering and sorting records.
- `CASE` – classifying customers into age groups and revenue categories.
- String functions – `CONCAT()` and `UPPER()`.
- Date functions – `EXTRACT()`.
- Subqueries – comparing individual subscription revenue with the overall average.
- `LIMIT` – returning the top 10 customers by monthly revenue.

## Key Findings

The analysis of the available customer and subscription records produced the following results:

| Metric | Finding |
|---|---:|
| Total revenue | ₦329,769 |
| Subscribed customers | 50 |
| Average revenue per customer | ₦6,595 |
| Revenue contribution from Premium plan | 55% |

### Subscription Plan Performance

| Plan | Customers | Total Revenue | Revenue Share |
|---|---:|---:|---:|
| Premium | 20 | ₦181,157 | 54.9% |
| Standard | 13 | ₦78,561 | 23.8% |
| Basic | 17 | ₦70,051 | 21.2% |

**Premium** is the largest revenue contributor, accounting for approximately 55% of total revenue from 20 customers.

### Geographic Performance

- **Kaduna** recorded the highest total revenue at ₦64,556 (19.6%).
- **Lagos** recorded the highest average revenue per customer at approximately ₦8,143.
- **FCT** recorded the lowest total revenue at ₦18,895.
- The **South-West** had the highest average revenue per customer among the regions shown.
- The **South-South** had the highest number of active customers in the regional summary, but the lowest average revenue per customer.

### Payment Methods

| Payment Method | Total Revenue | Revenue Share |
|---|---:|---:|
| Transfer | ₦128,686 | 39.0% |
| Card | ₦108,028 | 32.8% |
| USSD | ₦93,055 | 28.2% |

Transfer was the leading payment method by revenue, although revenue was distributed across all three payment channels.

## Business Recommendations

1. **Protect and retain Premium subscribers:** Premium generates the largest share of revenue. The company should prioritise customer satisfaction and retention within this segment.
2. **Review lower-performing markets:** Investigate the factors contributing to lower revenue in FCT and the South-South, then consider targeted customer engagement and suitable plan offers.
3. **Explore opportunities to grow Basic and Standard plans:** Review customer needs and plan benefits to identify opportunities for appropriate upgrades without reducing customer satisfaction.
4. **Maintain multiple payment options:** Transfer, card, and USSD all contribute meaningful revenue. Keeping these channels accessible can support payment convenience.
5. **Use customer segmentation:** Age groups, subscription plans, location, and revenue categories can help guide more relevant customer communication and service offers.

## SQL Code Screenshots

The screenshots below show selected SQL queries executed in pgAdmin 4. They are included to document the SQL work; the project does not use dashboard or management-report screenshots in this section.

## Repository Contents

| File | Description |
|---|---|
| `naija_telecommunication_.sql` | SQL script containing table creation statements and analysis queries. |
| `customers.csv` | Customer dataset used in the project. |
| `Naija_Telecom_Management_Report_v4.docx` | Management report presenting the analysis findings and recommendations. |
| `Screenshot 2026-11-08 203621.png` | Screenshot of SQL queries in pgAdmin 4. |
| `Screenshot 2026-11-08 203742.png` | Screenshot of SQL queries in pgAdmin 4. |

## How to Use This Project

1. Clone or download this repository.
2. Open pgAdmin 4 and connect to your PostgreSQL server.
3. Create or select a database for the project.
4. Import the customer CSV data into the appropriate customer table and prepare the subscription data as required by the SQL script.
5. Open `naija_telecommunication_.sql` in the Query Tool.
6. Review and execute the table creation statements and analysis queries, ensuring the table names match your database setup.

> **Note:** The SQL script and dataset are provided for learning and portfolio demonstration. If you recreate the database, check that the imported table names match the names referenced in the SQL queries before running the full script.

## Conclusion

This project provided practical experience in using PostgreSQL to combine customer and subscription data, calculate revenue metrics, segment customers, and answer business questions with SQL. It demonstrates how database querying can turn raw telecommunications data into findings that support customer retention, revenue analysis, and business planning.

