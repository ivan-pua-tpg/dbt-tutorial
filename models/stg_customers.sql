select 
    id as customer_id,
    first_name,
    last_name
--test comment 1
from {{ source('jaffle_shop', 'jaffle_shop_customers') }}
--test comment 2