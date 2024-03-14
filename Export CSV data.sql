SELECT  
	'ride_id',
    'rideable_type',
    'start_station_id',
    'end_station_id',
    'started_at',
    'ended_at',
    'member_casual'
UNION 
SELECT *
FROM tripdata2023v6
INTO OUTFILE 'tripdata2023_cleanedv7.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';