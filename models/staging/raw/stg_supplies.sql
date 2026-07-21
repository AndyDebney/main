with source as (
    select *
    from {{ source('raw', 'supplies') }}
),

renamed as (
    select
        id as supply_id,
        name as supply_name,
        cost as supply_cost,
        perishable as is_perishable,
        sku as product_sku
    from source
)

select *
from renamed
