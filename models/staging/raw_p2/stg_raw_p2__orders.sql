with 

source as (

    select * from {{ source('raw_p2', 'orders') }}

),

renamed as (

    select
        id,
        customer,
        ordered_at,
        store_id,
        subtotal,
        tax_paid,
        order_total

    from source

)

select * from renamed