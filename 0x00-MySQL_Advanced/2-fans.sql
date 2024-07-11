-- SQL script to rank the country origins of bands
-- sorted by the total number of fans, including duplicates

-- Query to select the origin column from the metal_bands table and calculate the total fans for each origin
SELECT origin, SUM(fans) AS total_fans
-- Specify the table to retrieve data from
FROM metal_bands
-- Group the results by the origin column to apply the SUM() function to each group of rows with the same origin
GROUP BY origin
-- Order the results in descending order by the total number of fans (total_fans)
ORDER BY total_fans DESC;
