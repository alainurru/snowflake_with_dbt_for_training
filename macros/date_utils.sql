{% macro get_season(date_variable)%}

    CASE
    WHEN MONTH(TO_TIMESTAMP({{date_variable}})) IN (12,1,2) THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{date_variable}})) IN (3,4,5) THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{date_variable}})) IN (6,7,8) THEN 'SUMMER'
    WHEN MONTH(TO_TIMESTAMP({{date_variable}})) IN (9,10,11) THEN 'AUTUMN'
    ELSE 'UNKNOWN'
    END

{% endmacro %}

{% macro day_type(date_variable)%}

    CASE
    WHEN DAYNAME(TO_TIMESTAMP({{date_variable}})) IN ('Sat','Sun') THEN 'WEEKEND'
    ELSE 'BUSINESSDAY'
    END

{% endmacro %}