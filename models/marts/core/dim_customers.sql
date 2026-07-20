with customers as (
    select *
    from {{ ref('int_customers') }}
)

select
    customer_id,
    customer_name
from customers
