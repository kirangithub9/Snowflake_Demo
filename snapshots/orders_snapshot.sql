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

{% endsnapshot %}