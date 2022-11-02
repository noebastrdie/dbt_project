--you can override a default default__test

{% macro default__test_not_null(model, column_name) %}

{% set column_list = '*' if should_store_failures() else column_name %}

select {{ column_list }}
from {{ model }}
where {{ column_name }} is null
-- add here other conditions
{% endmacro %}