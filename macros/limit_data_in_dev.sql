{% macro limit_data_in_dev(col) -%}

{% if target.name == 'dev' %}
WHERE {{ col }} >= DATEADD(CURRENT_DATE(), -3)
{% endif %}

{%- endmacro %}