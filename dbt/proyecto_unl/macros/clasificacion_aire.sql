{% macro clasificacion_aire(indice) %}
    case
        when {{ indice }} <= 50 then 'Bueno'
        when {{ indice }} > 50 and {{ indice }} <= 100 then 'Moderado'
        else 'Dañino'
    end
{% endmacro %}