-- Databricks notebook source
-- MAGIC %run ../Includes/Copy-Datasets
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC files = dbutils.fs.ls(f"{dataset_bookstore}/customers-json")
-- MAGIC display(files)

-- COMMAND ----------

SELECT * FROM json.`${dataset.bookstore}/customers-json/export_001.json`

-- COMMAND ----------

SELECT COUNT(DISTINCT customer_id) FROM json.`${dataset.bookstore}/customers-json/export_*.json`

-- COMMAND ----------

SELECT COUNT(DISTINCT customer_id) FROM json.`${dataset.bookstore}/customers-json`

-- COMMAND ----------

 SELECT *,
    input_file_name() source_file
  FROM json.`${dataset.bookstore}/customers-json`;

-- COMMAND ----------


