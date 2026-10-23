Project Architecture
👉🏻 Extract: Download and stage CSV files in Amazon S3
👉🏻 Load: Use Snowflake to load data into raw tables
👉🏻 Transform: Use DBT to build clean, modular, tested data models
👉🏻 Serve: Visualize the data using Looker Studio and Power BI

✅ DBT Models: You’ll learn how to write modular SQL models that represent business logic. Each model is a .sql file that gets materialized as a table or view in your data warehouse.

✅ Materializations: Understand how DBT creates database objects using different strategies, like view, table, and incremental, and when to use each one.

✅ Sources: Learn how to define raw data sources in DBT and reference them cleanly across your models. This improves data lineage and maintainability.

✅ Seeds: Use CSV files stored locally in your DBT project to create quick reference tables in your data warehouse — ideal for static lookup data.

✅Snapshots: Implement slowly changing dimensions (SCD Type 2) using DBT’s snapshot feature to track historical changes over time.

✅ Tests: Build data quality checks using built-in tests like unique, not_null, accepted_values, and even write your own custom tests.

✅ Macros: Leverage Jinja to create reusable logic inside DBT — such as dynamically generating columns or filters across models.

✅ Documentation: Auto-generate visual documentation and DAG (Directed Acyclic Graphs) for your entire pipeline, making it easy to understand relationships between tables.
