with supplies as (
    select *
    from {{ ref('int_supplies') }}
)

select
    supply_id,
    product_sku,
    supply_name,
    try_to_decimal(supply_cost, 10, 2) as supply_cost,
    is_perishable
from supplies
