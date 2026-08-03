WITH

stg_calendar AS (SELECT * FROM {{ ref("stg_calendar")}}),

te_reo AS (
	SELECT
		*,
		-- adding weekday names
		CASE
			WHEN day_of_week_name = 'Monday' THEN 'Mane'
			WHEN day_of_week_name = 'Tuesday' THEN 'Turei'
			WHEN day_of_week_name = 'Wednesday' THEN 'Wenerei'
			WHEN day_of_week_name = 'Thursday' THEN 'Taite'
			WHEN day_of_week_name = 'Friday' THEN 'Paraire'
			WHEN day_of_week_name = 'Saturday' THEN 'Hatarei'
			WHEN day_of_week_name = 'Sunday' THEN 'Raatapu'
			ELSE 'something went wrong'
		END AS day_of_week_name_te_reo_arotau,
		CASE
			WHEN day_of_week_name = 'Monday' THEN 'Raahina'
			WHEN day_of_week_name = 'Tuesday' THEN 'Raatuu'
			WHEN day_of_week_name = 'Wednesday' THEN 'Raaapa'
			WHEN day_of_week_name = 'Thursday' THEN 'Raapare'
			WHEN day_of_week_name = 'Friday' THEN 'Raamere'
			WHEN day_of_week_name = 'Saturday' THEN 'Raahoroi'
			WHEN day_of_week_name = 'Sunday' THEN 'Raatapu'
			ELSE 'something went wrong'
		END AS day_of_week_name_te_reo,
		-- adding months names
		CASE
			WHEN month_name = 'January' THEN 'Hanuere'
			WHEN month_name = 'February' THEN 'Peepuere'
			WHEN month_name = 'March' THEN 'Maehe'
			WHEN month_name = 'April' THEN 'Aaperira'
			WHEN month_name = 'May' THEN 'Mei'
			WHEN month_name = 'June' THEN 'Hune'
			WHEN month_name = 'July' THEN 'Huurae'
			WHEN month_name = 'August' THEN 'Aakuhata'
			WHEN month_name = 'September' THEN 'Hepetema'
			WHEN month_name = 'October' THEN 'Ooketopa'
			WHEN month_name = 'November' THEN 'Noema'
			WHEN month_name = 'December' THEN 'Tiihema'
			ELSE 'something went wrong'
		END AS month_name_te_reo_arotau,
		CASE
			WHEN month_name = 'January' THEN 'Kohitaatea'
			WHEN month_name = 'February' THEN 'Hui-tanguru'
			WHEN month_name = 'March' THEN 'Poutuu-te-rangi'
			WHEN month_name = 'April' THEN 'Paenga-whaawhaa'
			WHEN month_name = 'May' THEN 'Haratua'
			WHEN month_name = 'June' THEN 'Pipiri'
			WHEN month_name = 'July' THEN 'Hoongongoi'
			WHEN month_name = 'August' THEN 'Here-turi-kookaa'
			WHEN month_name = 'September' THEN 'Mahuru'
			WHEN month_name = 'October' THEN 'Whiringa-aa-nuku'
			WHEN month_name = 'November' THEN 'Whiringa-aa-rangi'
			WHEN month_name = 'December' THEN 'Hakihea'
			ELSE 'something went wrong'
		END AS month_name_te_reo

	FROM stg_calendar
)

SELECT
	-- date info
	date_day,
	prior_date_day,
	next_date_day,
	prior_year_date_day,
	prior_year_over_year_date_day,

	-- week info
	day_of_week, -- non-iso = sunday start
	day_of_week_iso, -- iso = monday start
	day_of_week_name,
	day_of_week_name_short,
	day_of_week_name_te_reo_arotau, -- te reo loan words
	day_of_week_name_te_reo, -- te reo
	day_of_month,
	day_of_year,
	week_start_date,
	week_end_date,
	prior_year_week_start_date,
	prior_year_week_end_date,
	week_of_year,
	iso_week_start_date,
	iso_week_end_date,
	prior_year_iso_week_start_date,
	prior_year_iso_week_end_date,
	iso_week_of_year,
	iso_year_week,
	prior_year_week_of_year,
	prior_year_iso_week_of_year,

	-- month info
	month_of_year,
	month_name,
	month_name_short,
	month_name_te_reo_arotau, -- te reo loan words
	month_name_te_reo, -- te reo
	month_start_date,
	month_end_date,
	prior_year_month_start_date,
	prior_year_month_end_date,

	-- quarter info
	quarter_of_year,
	quarter_start_date,
	quarter_end_date,

	-- year info
	year_number,
	year_start_date,
	year_end_date

FROM te_reo