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

#4-population and area of the largest and the smallest geographical area
SELECT
  pop.country_name,
  pop.population,
  size.country_area
FROM (
  SELECT
    country_name,
    midyear_population as population
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population`
  WHERE
    year = 2018) pop
INNER JOIN (
  SELECT
    country_name,
    country_area
  FROM
    `bigquery-public-data.census_bureau_international.country_names_area`) size
ON
  pop.country_name = size.country_name
WHERE pop.country_name = 'Russia' OR pop.country_name = 'Monaco'

#5-population of countries with largest area
SELECT
  pop.country_name,
  pop.population,
  size.country_area
FROM (
  SELECT
    country_name,
    midyear_population as population
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population`
  WHERE
    year = 2018) pop
INNER JOIN (
  SELECT
    country_name,
    country_area
  FROM
    `bigquery-public-data.census_bureau_international.country_names_area`) size
ON
  pop.country_name = size.country_name
ORDER BY country_area desc
