with 

source as (

    select * from {{ source('raw_p2', 'products') }}

),

renamed as (

    select
        sku,
        name,
        type,
        price,
        description

    from source

)

select * from renamed