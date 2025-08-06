{# {{ config(group = 'marketing') }}  {# This will give an error #} #}
{{ config(group = 'sales') }}

SELECT * FROM {{ ref('orders') }}