{{ config(materialized='table') }}

select customer_id, count(*) as total_orders, sum(total_price) as total_revenue
from {{ref("stg_orders")}}
group by customer_id