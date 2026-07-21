with source as (
    select *
    from {{ source('raw', 'order_items') }}
),

renamed as (
    select
        id as order_item_id,
        order_id as order_id,
        sku as product_sku
    from source
)

select *
from renamed
