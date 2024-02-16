SET SESSION sql_mode = '';

-- Table Month 01

drop table if exists bikeshare.tripdata202301;
CREATE TABLE bikeshare.tripdata202301 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202301-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202301
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);


-- Table Month 02

drop table if exists bikeshare.tripdata202302;
CREATE TABLE bikeshare.tripdata202302 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202302-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202302
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 03

drop table if exists bikeshare.tripdata202303;
CREATE TABLE bikeshare.tripdata202303 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202303-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202303
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 04

drop table if exists bikeshare.tripdata202304;
CREATE TABLE bikeshare.tripdata202304 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202304-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202304
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 05

drop table if exists bikeshare.tripdata202305;
CREATE TABLE bikeshare.tripdata202305 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);


LOAD DATA INFILE '202305-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202305
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 06

drop table if exists bikeshare.tripdata202306;
CREATE TABLE bikeshare.tripdata202306 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);


LOAD DATA INFILE '202306-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202306
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 07

drop table if exists bikeshare.tripdata202307;
CREATE TABLE bikeshare.tripdata202307 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202307-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202307
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 08

drop table if exists bikeshare.tripdata202308;
CREATE TABLE bikeshare.tripdata202308 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202308-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202308
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 09

drop table if exists bikeshare.tripdata202309;
CREATE TABLE bikeshare.tripdata202309 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202309-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202309
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table 1

drop table if exists bikeshare.tripdata202310;
CREATE TABLE bikeshare.tripdata202310 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);

LOAD DATA INFILE '202310-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202310
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);

-- Table Month 11

drop table if exists bikeshare.tripdata202311;
CREATE TABLE bikeshare.tripdata202311 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);


LOAD DATA INFILE '202311-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202311
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);


-- Table Month 12

drop table if exists bikeshare.tripdata202312;
CREATE TABLE bikeshare.tripdata202312 (
    ride_id VARCHAR(255) PRIMARY KEY,
    rideable_type VARCHAR(50),
    started_at VARCHAR(255),
    ended_at VARCHAR(255),
    start_station_name VARCHAR(255),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(255),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(10, 8),
    start_lng DECIMAL(10, 8),
    end_lat DECIMAL(10, 8),
    end_lng DECIMAL(10, 8),
    member_casual VARCHAR(50)
);


LOAD DATA INFILE '202312-divvy-tripdata.csv'
INTO TABLE bikeshare.tripdata202312
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name,  
end_station_id, start_lat, start_lng, end_lat, end_lng,  member_casual);



-- Combine all tables in a single table:
drop table if exists bikeshare.tripdata2023;
CREATE TABLE bikeshare.tripdata2023 AS
SELECT * FROM bikeshare.tripdata202301
UNION ALL
SELECT * FROM bikeshare.tripdata202302
UNION ALL
SELECT * FROM bikeshare.tripdata202303
UNION ALL
SELECT * FROM bikeshare.tripdata202304
UNION ALL
SELECT * FROM bikeshare.tripdata202305
UNION ALL
SELECT * FROM bikeshare.tripdata202306
UNION ALL
SELECT * FROM bikeshare.tripdata202307
UNION ALL
SELECT * FROM bikeshare.tripdata202308
UNION ALL
SELECT * FROM bikeshare.tripdata202309
UNION ALL
SELECT * FROM bikeshare.tripdata202310
UNION ALL
SELECT * FROM bikeshare.tripdata202311
UNION ALL
SELECT * FROM bikeshare.tripdata202312;
