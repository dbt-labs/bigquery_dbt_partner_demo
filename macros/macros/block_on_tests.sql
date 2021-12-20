{% macro block_on_tests(list_of_test_macros) %}

    {% if execute %}
        {% for test in list_of_test_macros %}
            {% set results = run_query(test) %}

            --- this part needs to change ----
            {% if (results.rows | length) == 0 %}

                -- TEST {{loop.index}}: PASS
            {% else %}
                {% set msg %} TEST {{loop.index}}: FAIL {% endset %}
                {% do exceptions.raise_compiler_error(msg) %}
            {% endif %}
        {% endfor %}
    {% endif %}
    
{% endmacro %}