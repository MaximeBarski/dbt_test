with source as (
    select * from my_dbt_db.raw_orders
),
renamed as (
    select
        id as order_id,
        customer as customer_id,
        ordered_at as ordered_at,
        store_id
    from source
)
select * from renamed