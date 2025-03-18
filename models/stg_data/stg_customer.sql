WITH tb1  as(
    select
    id, 
    first_name,
    last_name
    from {{source('datafeed_shared_schema','raw_customers')}})
    select * from tb1
