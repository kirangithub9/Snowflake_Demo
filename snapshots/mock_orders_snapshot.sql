{% snapshot mock_orders_snapshot %}

{{
    config(
      target_database='training_db',
      target_schema='jaffle_shop',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='UPDATED_AT',
    )
}}

select * from {{ source( 'jaffle_shop','mock_orders') }}

{% endsnapshot %}