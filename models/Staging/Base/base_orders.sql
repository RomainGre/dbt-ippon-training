{{config (materialized='table')}}
select distinct * from {{mockable_source("new_restaurants",'ORDERS','sample_orders')}}
