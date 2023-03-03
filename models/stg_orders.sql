select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from _prv_fraud.test_dbt_orders