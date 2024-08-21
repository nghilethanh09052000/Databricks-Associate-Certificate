-- Databricks notebook source
-- MAGIC %run ../Includes/Setup

-- COMMAND ----------

-- MAGIC %python
-- MAGIC print(full_name)

-- COMMAND ----------

-- MAGIC %fs ls '/databricks-datasets'

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dbutils.help()

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dbutils.fs.help()

-- COMMAND ----------

-- MAGIC %python
-- MAGIC files = dbutils.fs.ls('/databricks-datasets')
-- MAGIC print(files)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC display(files)
