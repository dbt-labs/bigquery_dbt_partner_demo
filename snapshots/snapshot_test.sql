{% snapshot snapshot_test %}

{{
    config(
      target_schema='dbt_bbirstock',
      unique_key='id',
      strategy='check',
      check_cols = 'all'
    )
}}

select * from {{ source('test', 'test') }}

{% endsnapshot %}