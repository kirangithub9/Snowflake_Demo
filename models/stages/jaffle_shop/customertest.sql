    select
        id as customer_id

    from {{ source('jaffle_shop','customers') }}