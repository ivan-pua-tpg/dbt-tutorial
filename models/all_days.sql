-- Docs from remote: https://github.com/dbt-labs/dbt-utils/blob/main/macros/sql/date_spine.sql
-- You can also find them locally here: dbt_packages/dbt_utils/macros/sql/date_spine.sql

{{
  config(
    materialized='view' 
  )
}}

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2019-01-01' as date)",
    end_date="cast('2020-01-01' as date)"
   )
}}