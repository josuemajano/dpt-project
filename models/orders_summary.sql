{{ config(materialized='table') }}

select customer_id, count(*) as total_orders, sum(total_price) as total_revenue, 'josue_cloud' as created_by
from {{ref("stg_orders")}}
group by customer_id