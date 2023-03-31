{% macro delete_max_id() %}
DELETE FROM _prv_fraud.test_dbt_delete
  WHERE id = (SELECT MAX(id) FROM _prv_fraud.test_dbt_delete);
INSERT INTO _prv_fraud.test_dbt_delete VALUES (999, 'James', 'Bond', 40);
{% endmacro %}
