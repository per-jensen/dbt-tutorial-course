{% snapshot snapshot__distribution_centers_seed %}

{{
	config(
		target_schema='dbt_snapshots',
		unique_key='id',
		strategy='check',
		check_cols=['name', 'latitude', 'longitude'],
        hard_deletes='new_record'
	)
}}

SELECT
	id,
	name,
	latitude,
	longitude

FROM {{ ref('seed_distribution_centers_new') }}

{% endsnapshot %}