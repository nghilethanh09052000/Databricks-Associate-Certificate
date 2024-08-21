-- Databricks notebook source
USE CATALOG hive_metastore

-- COMMAND ----------

SHOW SCHEMAS IN hive_metastore;


-- COMMAND ----------

CREATE TABLE new_default.employees
  (id INT, name STRING, salary DOUBLE);

-- COMMAND ----------

USE new_default;

-- COMMAND ----------

-- NOTE: With latest Databricks Runtimes, inserting few records in single transaction is optimized into single data file.
-- For this demo, we will insert the records in multiple transactions in order to create 4 data files.

INSERT INTO employees
VALUES 
  (1, "Adam", 3500.0),
  (2, "Sarah", 4020.5);

INSERT INTO employees
VALUES
  (3, "John", 2999.3),
  (4, "Thomas", 4000.3);

INSERT INTO employees
VALUES
  (5, "Anna", 2500.0);

INSERT INTO employees
VALUES
  (6, "Kim", 6200.3)

-- NOTE: When executing multiple SQL statements in the same cell, only the last statement's result will be displayed in the cell output.

-- COMMAND ----------



SELECT * FROM employees

-- COMMAND ----------

DESCRIBE DETAIL employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/new_default.db/employees'

-- COMMAND ----------

DESCRIBE HISTORY employees

-- COMMAND ----------


