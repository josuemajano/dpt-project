{{config(materialized='view')}}

select o_orderkey as order_id, o_custkey as customer_id, o_totalprice as total_price, o_orderdate::date as order_date
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
where o_orderstatus in ('O', 'F')