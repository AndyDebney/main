with orders as (

    select *
    from {{ ref('stg_raw_p2__orders') }}

),

customers as (

    select *
    from {{ ref('stg_raw_p2__customers') }}

),

final as (

    select
        orders.id as order_id,
        orders.customer as customer_id,
        customers.name as customer_name,
        orders.ordered_at as ordered_at,
        cast(orders.ordered_at as date) as order_date,
        orders.store_id as store_id,
        orders.subtotal as subtotal_amount,
        orders.tax_paid as tax_amount,
        orders.order_total as total_amount
    from orders
    left join customers
        on orders.customer = customers.id

)

select *
from final
