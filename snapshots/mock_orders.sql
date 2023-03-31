{% snapshot dbt_snapshot_mock_orders %}

-- {% set new_schema = target.schema + '_snapshot' %}

{{
    config(
      target_database='dev',
      target_schema='_prv_fraud',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at'
    )
}}

select * from {{target.schema}}.dbt_mock_orders

{% endsnapshot %}