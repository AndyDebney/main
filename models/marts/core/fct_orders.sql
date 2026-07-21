with orders as (
    select *
    from {{ ref('int_orders') }}
)

select
    order_id,
    customer_id,
    store_id,
    try_to_timestamp_ntz(ordered_at) as ordered_at,
    try_to_decimal(subtotal, 12, 2) as subtotal,
    try_to_decimal(tax_paid, 12, 2) as tax_paid,
    try_to_decimal(order_total, 12, 2) as order_total
from orders
