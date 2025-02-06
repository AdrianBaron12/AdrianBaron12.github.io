/*
# Data Quality Tests

1. The data needs to be 100 records for Youtube channels
2. The data needs 4 fields (column count test)
3. The channel name column must be string format, and the other columns must be numerical data types (data type check)
4. Each record must be unique in the dataset (duplicate count check)

Row count - 100
Column count - 4


Data types 

channel_name - varchar
total_subscribers - INT
total_views - INT
total_videos - INT

Duplicate count = 0

*/

-- 1. Row count check

SELECT COUNT(*) as no_of_rows
FROM view_uk_youtubers_2024

-- 2. Column count check

SELECT COUNT(*) as NO_of_Columns 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'view_uk_youtubers_2024'

-- 3. Data Type Check

SELECT COLUMN_NAME, 
       DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtubers_2024'

-- 4. Duplicate Count check

SELECT channel_name,
	   COUNT(*) as duplicate_count
FROM view_uk_youtubers_2024
GROUP BY channel_name
HAVING COUNT(*)>1