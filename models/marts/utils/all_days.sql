with base_spine as (
{{ dbt_utils.date_spine(
    datepart="day",
    start_date="date(1990,01,01)",
    end_date="date(2040,01,01)"
   )
}} 
)

select date_day
     , date_trunc(date_day,WEEK) as date_week
     , date_trunc(date_day,MONTH) as date_month
     , date_trunc(date_day,QUARTER) as date_quarter
     , date_trunc(date_day,YEAR) as date_year
  from base_spine