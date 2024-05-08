-- SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
SELECT 
    band_name,
    IFNULL(TIMESTAMPDIFF(YEAR, formed, split), 0) AS lifespan
FROM 
    metal_bands
WHERE
    style = "Glam rock"
ORDER BY 
    lifespan DESC;

