-- Retail-Sales-Analysis Project
-- Author: Jayshree Patidar
-- Description: SQL analysis on retail sales dataset


-- 1. DATABASE SETUP

-- Creating Database
CREATE DATABASE retail_sales_project;


-- 2. TABLE CREATION

-- Creating The Ratail Sales Table
CREATE TABLE retail_sales(
	transactions_id INT PRIMARY KEY,
	sale_date DATE,
	sale_time TIME,
	customer_id INT,  
	gender VARCHAR(15),
	age INT,
	category VARCHAR(20),
	quantiy INT,     
	price_per_unit NUMERIC(10,2),
	cogs NUMERIC(10,2),
	total_sale NUMERIC(10,2)
);


-- 3. DATA PREVIEW AND EXPLORATION QUERIES 

-- Count total records in dataset
SELECT COUNT(*) FROM retail_sales;

-- Total number of sales
SELECT COUNT(*) AS total_sales
FROM retail_sales;

-- Total number of customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;

-- Number of product categories
SELECT DISTINCT category
FROM retail_sales;

-- Date range of dataset
SELECT 
    MIN(sale_date) AS start_date,
    MAX(sale_date) AS end_date
FROM retail_sales;


-- 4. DATA CLEANING

-- Check for NULL values
SELECT *
FROM retail_sales
WHERE
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantity IS NULL
	OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;



-- Count rows with NULL values
SELECT COUNT(*) AS null_count
FROM retail_sales
WHERE
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantity IS NULL
	OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;

 -- Delete NULL records
DELETE FROM retail_sales
WHERE 
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantity IS NULL
	OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;



-- Check duplicate transactions
SELECT transactions_id, COUNT(*)
FROM retail_sales
GROUP BY transactions_id
HAVING COUNT(*) > 1;








	