-- SQL script to list all bands with Glam Rock as their primary style,
-- ordered by their longevity
-- Requirements:
-- The column names must be: band_name and lifespan (in years until 2022 - use 2022 instead of YEAR(CURDATE()))
-- Use the attributes formed and split to calculate the lifespan

SELECT band_name, (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam Rock%'
ORDER BY lifespan DESC;
