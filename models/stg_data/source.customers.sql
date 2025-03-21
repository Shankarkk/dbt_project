{{ config(materialized='view') }}

WITH tb1  as(
 select
        id ,
        first_name,
        last_name
     from {{source('datafeed_shared_schema','SOURCE_CUSTOMERS')}})
     select * from tb1
