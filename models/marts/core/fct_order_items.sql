with order_items as (
    select *
    from {{ ref('int_order_items') }}
),

orders as (
    select *
    from {{ ref('int_orders') }}
),

products as (
    select *
    from {{ ref('int_products') }}
),

joined as (
    select
        order_items.order_item_id,
        order_items.order_id,
        orders.customer_id,
        orders.store_id,
        try_to_timestamp_ntz(orders.ordered_at) as ordered_at,
        order_items.product_sku,
        products.product_name,
        products.product_type,
        try_to_decimal(products.product_price, 10, 2) as product_price
    from order_items
    left join orders
        on order_items.order_id = orders.order_id
    left join products
        on order_items.product_sku = products.product_sku
)

select *
from joined
