{{ config(materialized='view') }}
select ciudad_id as nombre_ciudad,indice_ica,particulas_pm25 from {{ ref('calidad_aire') }}