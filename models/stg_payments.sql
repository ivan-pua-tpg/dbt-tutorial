select 
    id,
    orderid,
    paymentmethod,
    status, 
    amount,
    created
--test comment 1
from {{ source('jaffle_shop', 'stripe_payments') }}
--test comment 2