-- Databricks notebook source
-- MAGIC %python
-- MAGIC catalog = "hive_metastore"
-- MAGIC schema = "default"
-- MAGIC dbfs_path = "/dbfs/tmp/data"
-- MAGIC download_url = "https://health.data.ny.gov/api/views/jxy9-yhdk/rows.csv"
-- MAGIC file_name = "baby_names.csv"
-- MAGIC table_name = "baby_names"
-- MAGIC path_dbfs = dbfs_path + "/" + file_name
-- MAGIC path_table = catalog + "." + schema
-- MAGIC print(path_table)  # Show the complete path to the table
-- MAGIC print(path_dbfs)  # Show the complete path in DBFS
-- MAGIC
-- MAGIC # Download and save the file to DBFS
-- MAGIC dbutils.fs.cp(f"{download_url}", f"dbfs:/tmp/data/{file_name}")
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dbutils.fs.cp(f"{download_url}", f"{path_volume}" + "/" + f"{file_name}")
-- MAGIC
-- MAGIC

-- COMMAND ----------

SELECT CURRENT_METASTORE();

