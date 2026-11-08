CREATE TABLE customers_ (
	customer_id VARCHAR(20),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(10),
	age INTEGER,
	state VARCHAR(50),
	region VARCHAR(50),
	join_date DATE,
	plan_type VARCHAR(20),
	status VARCHAR(20)
);

CREATE TABLE subscriptions (
	subscription_id VARCHAR(20), 
	customer_id VARCHAR(20),
	subscription_date DATE,
	plan_type VARCHAR(20),
	monthly_fee DECIMAL(10,2),
	data_gb INTEGER,
	calls_min INTEGER,
	sms_count INTEGER,
	payment_method VARCHAR(20),
	revenue DECIMAL(10,2)
);

SELECT * FROM customers;
SELECT * FROM subscriptions;


__Question 1#
SELECT CONCAT(c.first_name, ' ', c.last_name) AS "Full Name", 
	   c.state AS "State", 
	   c.plan_type AS "Subscription Plan",
	   s.payment_method AS "Payment Method", 
	   s.revenue AS "Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id =s.customer_id;

__Question 2#
SELECT c.plan_type AS "Subscription Plan", SUM(s.revenue) AS "Total Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id = s.customer_id
GROUP BY c.plan_type;

__Question 3#
SELECT c.region, ROUND(AVG(s.revenue),2) AS "Average Monthly Revenue"
FROM subscriptions AS s
INNER JOIN customers AS c
ON c.customer_id = s.customer_id
GROUP BY c.region;

__Question 4#
SELECT plan_type AS "Subscription Plan", COUNT(*) AS "Customer Count"
FROM customers
GROUP BY plan_type

__Question 5#
SELECT c.state AS "State", SUM(s.revenue) AS "Total Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id = s.customer_id
GROUP BY c.state
ORDER BY "Total Revenue" DESC;

__Question 6#
SELECT s.plan_type, ROUND(AVG(c.age),0) AS "Average Age"
FROM subscriptions AS s
INNER JOIN customers AS c
ON c.customer_id = s.customer_id
GROUP BY s.plan_type;

__Question 7#
SELECT payment_method, SUM(revenue) AS "Total Revenue"
FROM subscriptions
GROUP BY payment_method
HAVING  SUM(revenue) IS NOT NULL;

__Question 8#
SELECT c.plan_type AS "Subscription Plan", MAX(s.revenue) AS "Max Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id = s.customer_id
GROUP BY c.plan_type;

__Question 9#
SELECT c.plan_type AS "Subscription Plan", MIN(s.revenue) AS "Min Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id = s.customer_id
GROUP BY c.plan_type;

__Question 10#
SELECT region, COUNT(*) AS "Customer Count"
FROM customers
WHERE status = 'Active'
GROUP BY region;

__Question 11#
SELECT CONCAT(first_name, ' ', last_name) AS "Full Name",
	   age,
	   CASE WHEN age < 30 THEN 'Youth'
	   		WHEN age BETWEEN 30 AND 50 THEN 'Adult'
			ELSE 'Senior'
	   END AS age_group
FROM customers
WHERE age IS NOT NULL;

__Question 12#
SELECT CASE WHEN age < 30 THEN 'Youth'
	   		WHEN age BETWEEN 30 AND 50 THEN 'Adult'
			ELSE 'Senior'
	    END AS age_group,
		COUNT(*) AS "Customer Count" 
FROM customers
WHERE age is NOT NULL
GROUP BY age_group;

__Question 13#
SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS "Full Name",
	   plan_type AS "Subscription Plan"
FROM customers
WHERE plan_type IS NOT NULL;

__Question 14#
SELECT customer_id,
	   EXTRACT(year from join_date) AS "Year", 
	   plan_type AS "Subscription Plan"
FROM customers
WHERE customer_id IS NOT NULL;

__Question 15#
SELECT CONCAT(c.first_name, ' ', c.last_name) AS "Customer Name", 
	   c.state AS "State", 
	   c.plan_type AS "Subscription Plan",
	   s.revenue AS "Monthly Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id =s.customer_id
ORDER BY "Monthly Revenue" DESC
LIMIT 10;

__Bonus Question 1#
SELECT c.state AS "State", ROUND(AVG(s.revenue),2) AS "Average Monthly Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id = s.customer_id
GROUP BY c.state;

__Bonus Question 3 (Subqueries)#
SELECT CONCAT(c.first_name, ' ', c.last_name) AS "Customer Name",
	   s.revenue AS "Monthly Revenue"
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id = s.customer_id
WHERE s.revenue > (SELECT AVG(revenue) FROM subscriptions);
	   
__Bonus Question 4#
SELECT CONCAT(c.first_name, ' ', c.last_name) AS "Customer Name",
	   s.revenue AS "Revenue",
	   CASE WHEN s.revenue < 4000 THEN 'Low'
	   		WHEN s.revenue BETWEEN 4000 AND 5000 THEN 'Mid'
			ELSE 'High'
	    END AS revenue_category		
FROM customers AS c
INNER JOIN subscriptions AS s
ON c.customer_id = s.customer_id;

	   
