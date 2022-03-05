#1-Countries with largest proportion of under 25 population (absolute and percentage)
  #a-absolute
SELECT
  age.country_name,
  SUM(age.population) AS under_25,
  pop.midyear_population AS total,
  ROUND((SUM(age.population) / pop.midyear_population) * 100) AS Percentage_under_25
FROM (
  SELECT
    country_name,
    population,
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population_agespecific`
  WHERE
    year =2021
    AND age < 25) age
INNER JOIN (
  SELECT
    midyear_population,
    country_name
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population`
  WHERE
    year = 2021) pop
ON
  age.country_name = pop.country_name
GROUP BY age.country_name, pop.midyear_population
ORDER BY SUM(age.population) desc

  #b-percentage
SELECT
  age.country_name,
  SUM(age.population) AS under_25,
  pop.midyear_population AS total,
  ROUND((SUM(age.population) / pop.midyear_population) * 100) AS Percentage_under_25
FROM (
  SELECT
    country_name,
    population,
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population_agespecific`
  WHERE
    year =2021
    AND age < 25) age
INNER JOIN (
  SELECT
    midyear_population,
    country_name
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population`
  WHERE
    year = 2021) pop
ON
  age.country_name = pop.country_name
GROUP BY age.country_name, pop.midyear_population
ORDER BY ROUND((SUM(age.population) / pop.midyear_population) * 100) desc

#2-Countries with largest Above 49 population (Percentage)
SELECT
  age.country_name,
  SUM(age.population) AS Above_49,
  pop.midyear_population AS total,
  ROUND((SUM(age.population) / pop.midyear_population) * 100) AS Percentage_above_49
FROM (
  SELECT
    country_name,
    population,
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population_agespecific`
  WHERE
    year =2021
    AND age > 49) age
INNER JOIN (
  SELECT
    midyear_population,
    country_name
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population`
  WHERE
    year = 2021) pop
ON
  age.country_name = pop.country_name
GROUP BY age.country_name, pop.midyear_population
ORDER BY ROUND((SUM(age.population) / pop.midyear_population) * 100) desc

#3-Countries with largest female population
SELECT
  pop.country_name,
  MAX(pop.midyear_population_female) AS Female_population,
  pop.midyear_population AS total,
FROM (
  SELECT
    country_name,
    midyear_population,
    midyear_population_female,
  FROM
    `bigquery-public-data.census_bureau_international.midyear_population_5yr_age_sex`
  WHERE
    year =2021) pop
GROUP BY pop.country_name, pop.midyear_population
ORDER BY MAX(pop.midyear_population_female) desc
