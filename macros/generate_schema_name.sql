{% macro generate_schema_name(custom_schema_name, node) %}

    {% if target.schema == 'PROD' %}
        {{ custom_schema_name }}
    {% else %}
        {{ target.name }}_{{ custom_schema_name }}
    {% endif %}

{% endmacro %}