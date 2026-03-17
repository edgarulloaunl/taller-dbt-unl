{{ config(materialized='table') }}
with clima as (select * from {{ ref('stg_clima') }}),aire as (select * from {{ ref('stg_calidad_aire') }})
select
    c.nombre_ciudad,
    c.temp_celsius,
    c.condicion_climatica,
    a.indice_ica,
    a.particulas_pm25,
    {{ clasificacion_aire('a.indice_ica') }} as categoria_calidad_aire
from clima c left join aire a on c.nombre_ciudad = a.nombre_ciudad