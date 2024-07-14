--Process Phase--

--Identify and Remove Null values--
SELECT *
FROM dbo.Cyclist_Full_Yr_2021
WHERE
ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR end_station_name IS NULL
OR member_casual IS NULL;

--Identify and Remove Null Values--
DELETE FROM dbo.Cyclist_Full_Yr_2021
WHERE
ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR end_station_name IS NULL
OR member_casual IS NULL;

--Identify and Remove Duplicate Values--
SELECT *,
COUNT(*) AS duplicatecount
FROM dbo.Cyclist_Full_Yr_2021
GROUP BY 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
HAVING COUNT(*) >1;
