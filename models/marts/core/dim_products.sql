with products as (
    select *
    from {{ ref('int_products') }}
)

select
    product_sku,
    product_name,
    product_type,
    try_to_decimal(product_price, 10, 2) as product_price,
    product_description
from products
