with 

source as (

    select * from {{ source('raw_p2', 'customers') }}

),

renamed as (

    select
        id,
        name

    from source

)

select * from renamed