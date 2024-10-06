
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with sales_order_data as (

    select 1 as id
    union all
    select null as id

)

SELECT 
    o.ORDER_DATE,
    COUNT(DISTINCT o.ID) AS total_orders,
    SUM(p.AMOUNT) AS total_sales
FROM 
    SNOWFLAKEFIVETRANSDBTRAINING.SNOWFLAKEFIVETRANSDBTRAINING.RAW_ONLINESHOP_ORDERS AS o
JOIN 
    SNOWFLAKEFIVETRANSDBTRAINING.SNOWFLAKEFIVETRANSDBTRAINING.raw_stripe_payments AS p 
ON 
    o.ID = p.ORDER_ID
WHERE 
    o.STATUS = 'completed'  -- Filter for completed orders
GROUP BY 
    o.ORDER_DATE
ORDER BY 
    o.ORDER_DATE

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
