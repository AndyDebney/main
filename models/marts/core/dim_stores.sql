with stores as (
    select *
    from {{ ref('int_stores') }}
)

select
    store_id,
    store_name,
    try_to_timestamp_ntz(opened_at) as opened_at,
    try_to_decimal(tax_rate, 10, 4) as tax_rate
from stores
