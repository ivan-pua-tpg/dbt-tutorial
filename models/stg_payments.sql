select 
    id,
    orderid AS order_id,
    paymentmethod as payment_method,
    status, 
    {{ cents_to_dollars('amount') }} as amount, -- need to add quotes around amount, otherwise dbt will think that we are invoking a variable
    created
--test comment 1
from {{ source('jaffle_shop', 'stripe_payments') }}
--test comment 2