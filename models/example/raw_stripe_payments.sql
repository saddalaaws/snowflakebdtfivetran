-- Use the `ref` function to select from other models

SELECT 
	ID ,
	ORDER_ID ,
	PAYMENT_METHOD,
	AMOUNT
FROM 
    RAW_STRIPE_PAYMENTS  -- Replace with the actual source table
