#1-Top 5 Countries with the Highest life expectancy
SELECT
  age.country_name,
  age.life_expectancy,
FROM (
  SELECT
    country_name,
    life_expectancy
  FROM
    `bigquery-public-data.census_bureau_international.mortality_life_expectancy`
  WHERE
    year = 2021) age
ORDER BY
    age.life_expectancy DESC
LIMIT 5

#2-Number of Countries with Life expectancy above 80
SELECT
  COUNT(age.country_name) as Life_above_80
FROM (
  SELECT
    country_name,
    life_expectancy
  FROM
    `bigquery-public-data.census_bureau_international.mortality_life_expectancy`
  WHERE
    year = 2021) age
WHERE age.life_expectancy > 80

#3-Life expectancy in India and China (sex specific)
SELECT
  age.country_name,
  age.life_expectancy_male,
  age.life_expectancy_female
FROM (
  SELECT
    country_name,
    life_expectancy_male,
    life_expectancy_female
  FROM
    `bigquery-public-data.census_bureau_international.mortality_life_expectancy`
  WHERE
    year = 2021 AND (country_name = 'India' OR country_name = 'China')) age
