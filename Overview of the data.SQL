#Before commencing with the analysis, let us get a general overview of the data at hand.

#1-number of geographical areas
SELECT 
    COUNT(DISTINCT (country_name))
FROM `bigquery-public-data.census_bureau_international.country_names_area`

#2-largest geographical area
SELECT 
    country_name,
    country_area
FROM 
    `bigquery-public-data.census_bureau_international.country_names_area`
WHERE 
    country_area = (
        SELECT 
            MAX(country_area)
        FROM
            `bigquery-public-data.census_bureau_international.country_names_area`)

#3-smallest geographical area
SELECT 
    country_name,
    country_area
FROM 
    `bigquery-public-data.census_bureau_international.country_names_area`
WHERE 
    country_area = (
        SELECT 
            MIN(country_area)
        FROM
            `bigquery-public-data.census_bureau_international.country_names_area`)
