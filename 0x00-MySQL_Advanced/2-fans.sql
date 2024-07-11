-- SQL script to rank the countries where bands originate from
-- sorted by the total number of fans, including duplicates

-- Query to select the origin column from the metal_bands table and calculate the total fans for each origin
SELECT origin, SUM(fans) AS nb_fans
-- Indicate the table from which to retrieve the data
FROM metal_bands
-- Group the results by the origin column to apply the SUM() function to each group of rows with the same origin
GROUP BY origin
-- Sort the results in descending order based on the total number of fans (nb_fans)
ORDER BY nb_fans DESC;
