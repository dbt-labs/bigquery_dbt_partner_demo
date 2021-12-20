{% macro money(column_name) -%}

round(cast({{column_name}} as numeric),4)

{%- endmacro %}

