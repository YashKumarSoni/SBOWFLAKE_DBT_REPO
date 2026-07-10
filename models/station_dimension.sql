 with bike as (
    select
    start_statio_id as station_id,
    START_STATION_NAME as station_name,
    START_LAT station_lat,
    START_LNG start_station_lng, 
    from {{ source('demo', 'bike') }}
    where ride_id != 'ride_id'
)
select * from bike