-- Use the `ref` function to select from other models

SELECT 
    ID,
    USER_ID,
    ORDER_DATE,
    STATUS
FROM 
    RAW_ONLINESHOP_ORDERS  -- Replace with the actual source table
