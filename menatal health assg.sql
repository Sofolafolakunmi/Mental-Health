SELECT *
FROM [Mental Health Dataset]

SELECT DATA_TYPE 
FROM INFORMATION_SCHEMA. COLUMNS
WHERE TABLE_NAME = 'Mental Health Dataset'

SELECT *
FROM [Mental Health Dataset]
WHERE Timestamp IS NULL OR Gender IS NULL OR Country IS NULL OR Occupation IS NULL OR self_employed is NULL OR family_history IS NULL OR treatment IS NULL OR
Days_Indoors IS NULL OR Growing_Stress IS NULL OR Changes_Habits IS NULL OR Mental_Health_History IS NULL OR Mood_Swings IS NULL OR Coping_Struggles IS NULL OR
Work_Interest IS NULL OR Social_Weakness IS NULL OR mental_health_interview IS NULL OR care_options IS NULL;

SELECT
    CAST(Timestamp AS DATE) AS date_part,
    CAST(Timestamp AS TIME) AS time_part
FROM
    [Mental Health Dataset]


ALTER TABLE [Mental Health Dataset]
ADD Time_Day  INT,
    Time_Month Varchar (10),
	Time_Year  INT,
	Time_Day_Of_Week Varchar (10);


UPDATE [Mental Health Dataset]
SET Time_Day = DATEPART(day, Timestamp),
    Time_Month = DATENAME(month, Timestamp),
	Time_Year = DATEPART(year, Timestamp),
	Time_Day_Of_Week = DATENAME(Weekday, Timestamp);


SELECT 
   DATEPART(day, Timestamp) AS Time_Day,
   DATENAME(month, Timestamp) AS Time_Month,
   DATEPART(year, Timestamp) AS Time_Year,
   DATENAME(Weekday, Timestamp) AS Time_Day_Of_Week
   FROM [Mental Health Dataset]

ALTER TABLE [Mental Health Dataset]
ADD Time_Hours  INT,
    Time_Minutes INT,
	Time_Second INT;


UPDATE [Mental Health Dataset]
SET Time_Hours = DATEPART(HOUR, Timestamp),
    Time_Minutes = DATENAME(MINUTE, Timestamp),
	Time_Second = DATEPART(SECOND, Timestamp)


SELECT
    DATEPART(HOUR, Timestamp) AS hours,
    DATEPART(MINUTE, Timestamp) AS minutes,
    DATEPART(SECOND, Timestamp) AS seconds
FROM
    [Mental Health Dataset]

SELECT DISTINCT (Country)
FROM [Mental Health Dataset]

Count DISTINCT (Country) As Country_Count
FROM [Mental Health Dataset]
