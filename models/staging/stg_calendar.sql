 {#
 this model creates flexible 60 year windows as preparation for dim_calendar
 using a calendar package
 #}

{% set start_date = (modules.datetime.date.today() - modules.datetime.timedelta(days=365*30)).strftime("%Y-%m-%d") %}
{% set end_date = (modules.datetime.date.today() + modules.datetime.timedelta(days=365*30)).strftime("%Y-%m-%d") %}

{{ dbt_date.get_date_dimension(
    start_date=start_date,
    end_date=end_date
) }}