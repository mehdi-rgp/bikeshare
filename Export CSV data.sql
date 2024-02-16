SELECT  'ride_id', 'rideable_type', 'started_at', 'ended_at', 'start_station_id', 'end_station_id', 
'member_casual', 'start_station_name', 'start_lat', 'start_lng', 'end_station_name', 'end_lat', 'end_lng'
UNION 
SELECT *
FROM bikeshare.tripdata2023_cleaned
INTO OUTFILE 'tripdata2023_cleaned.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';