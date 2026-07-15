with 

source as (

    select * from {{ source('raw_p2', 'order_items') }}

),

renamed as (

    select
        id,
        order_id,
        sku

    from source

)

select * from renamed