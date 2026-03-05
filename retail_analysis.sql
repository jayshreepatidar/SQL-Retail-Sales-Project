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


-- 3. DATA PREVIEW

-- Preview first 10 rows
SELECT *
FROM retail_sales
LIMIT 10;


-- Count total records in dataset
SELECT COUNT(*) FROM retail_sales;