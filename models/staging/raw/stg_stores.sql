with source as (
    select *
    from {{ source('raw', 'stores') }}
),

renamed as (
    select
        id as store_id,
        name as store_name,
        opened_at as opened_at,
        tax_rate as tax_rate
    from source
)

select *
from renamed
