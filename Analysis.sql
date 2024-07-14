--Analyze Phase How do annual members and casual riders use Cyclistic bikes differently--

--Find totals of each kind of user member or casual--
SELECT member_casual, count(*)
FROM dbo.Cyclist_Full_Yr_2021
group by member_casual
order by member_casual
-- this script above ran and showed casual= 2529005 and member=3066058--

--Another way to find totals for each type of member_casual colum,this method will give column names in results--
SELECT count(ride_id) AS number_of_riders,
member_casual
FROM dbo.Cyclist_Full_Yr_2021
Group by 
member_casual;

--Rideable-Type by member and casual users ordered by ride id--
select 
count(ride_id) AS no_of_riders,
rideable_type,
member_casual
from dbo.Cyclist_Full_Yr_2021
group by 
rideable_type,
member_casual
ORDER BY
COUNT(ride_id) DESC;

--Mostly used start station by member and casual users--

select top 10
count(ride_id) AS no_of_riders,
start_station_name,
member_casual
from dbo.Cyclist_Full_Yr_2021
group by
start_station_name,
member_casual
order by 
count(ride_id) DESC;

--mostly used end station name--
select top 10
count(ride_id) AS no_of_riders,
end_station_name,
member_casual
from dbo.Cyclist_Full_Yr_2021
group by
end_station_name,
member_casual
order by 
count(ride_id) DESC;

--Started time analysis by member and casual users--

--Doing Month analysis first then will do weekday and hour whichi s why those two are in commecnts right now --
select
count(ride_id) AS no_of_users,
DATEPART(MONTH,started_at) AS Started_month,
--DATEPART(WEEKDAY, started_at) as Started_day,
--DatePart(HOUR, started_at) As Started_hour
member_casual
from dbo.Cyclist_Full_Yr_2021
group by member_casual,
DATEPART(MONTH,started_at)
order by COUNT(ride_id) DESC;

--Weekday Analysis to see the day of the week most used--

select
count(ride_id) AS no_of_users,
DATEPART(WEEKDAY, started_at) as Started_day,
--DatePart(HOUR, started_at) As Started_hour
member_casual
from dbo.Cyclist_Full_Yr_2021
group by member_casual,
DATEPART(WEEKDAY,started_at)
order by COUNT(ride_id) DESC;

--Hour Analysis to see the hour most used--

select
count(ride_id) AS no_of_users,
DatePart(HOUR, started_at) As Started_hour,
member_casual
from dbo.Cyclist_Full_Yr_2021
group by member_casual,
DATEPART(HOUR,started_at)
order by COUNT(ride_id) DESC;

--Ended at by month analysis by member and casual users--

select
count(ride_id) AS no_of_users,
DATEPART(MONTH,ended_at) AS ended_month,
--DATEPART(WEEKDAY, ended_at) as ended_day,
--DatePart(HOUR, ended_at) As ended_hour
member_casual
from dbo.Cyclist_Full_Yr_2021
group by member_casual,
DATEPART(MONTH,ended_at)
order by COUNT(ride_id) DESC;


--Ended at by weekday analysis by member and casual users--

select
count(ride_id) AS no_of_users,
DATEPART(WEEKDAY, ended_at) as ended_day,
--DatePart(HOUR, ended_at) As ended_hour
member_casual
from dbo.Cyclist_Full_Yr_2021
group by member_casual,
DATEPART(WEEKDAY,ended_at)
order by COUNT(ride_id) DESC;

--Ended at by hour analysis by member and casual users--

select
count(ride_id) AS no_of_users,
DatePart(HOUR, ended_at) As ended_hour,
member_casual
from dbo.Cyclist_Full_Yr_2021
group by member_casual,
DATEPART(hour,ended_at)
order by COUNT(ride_id) DESC;