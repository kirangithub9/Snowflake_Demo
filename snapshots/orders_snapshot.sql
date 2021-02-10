<<<<<<< HEAD
{% snapshot orders_snapshot %}

{{
    config(
      target_database='training_db',
      target_schema='jaffle_shop',
      unique_key='id',

      strategy='timestamp',
      updated_at='_ETL_LOADED_AT',
    )
}}

select * from {{ source( 'jaffle_shop','orders') }}

=======
{% snapshot mock_orders %}

{{
    config(
      target_database='training_db',
      target_schema='snapshots',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('jaffle_shop', 'mock_orders') }}

>>>>>>> 800a0b64e8cbbc78e8ed786444e02bb9bf2443c5
{% endsnapshot %}