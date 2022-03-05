#1-Migration from Small Countries (Net)
SELECT
  migration.country_name,
  migration.net_migration,
  CAST(area.country_area AS INT64) AS country_area
FROM (
  SELECT
    country_name,
    net_migration,
  FROM
    `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
  WHERE
    year = 2021) migration
INNER JOIN (
  SELECT
    country_area,
    country_name
  FROM
    `bigquery-public-data.census_bureau_international.country_names_area`
  WHERE
    country_area < 1000) area
ON
  migration.country_name = area.country_name
ORDER BY
  net_migration DESC
  
#2-Average Migration in Countries with Highest Population (China and India) in the past decade (2011-2021)
SELECT
  migration.country_name,
  AVG(migration.net_migration),
FROM (
  SELECT
    country_name,
    net_migration
  FROM
    `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
  WHERE
    (year BETWEEN 2011 AND 2021) AND (country_name = 'India' OR country_name = 'China')) migration
GROUP BY migration.country_name
