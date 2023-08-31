{% macro template_example(schema) %}

    {% set query %}
        select true as bool
    {% endset %}

    {% if execute %} -- https://docs.getdbt.com/reference/dbt-jinja-functions/execute

        {% set results = run_query(query).columns[0].values()[0] %}
        {{ log ('SQL results ' ~ result, info =True)}}

        select
        {{results}} as is_real
        from a_real_table


    {% endif %}

{% endmacro %}
