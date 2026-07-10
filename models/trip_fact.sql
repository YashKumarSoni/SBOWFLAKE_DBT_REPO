with trips as (
    select 
    ride_id,
    rideable_type,
    date(to_timestamp(started_at)) as trip_date,
    start_statio_id as start_station_id,
    end_station_id,
    MEMBER_CSUAL as MEMBER_CASUAL,
    timestampdiff(second,to_timestamp(started_at),to_timestamp(ENDED_AT)) as trip_duration_in_seconds
    from {{ source('demo', 'bike') }}
    where ride_id != 'ride_id'
)
select * from trips