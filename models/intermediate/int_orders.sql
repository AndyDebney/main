with orders as (
    select
        order_id,
        customer_id,
        ordered_at,
        store_id,
        subtotal,
        tax_paid,
        order_total
    from {{ ref('stg_orders') }}
)

select
    order_id,
    customer_id,
    ordered_at,
    store_id,
    subtotal,
    tax_paid,
    order_total
from orders
