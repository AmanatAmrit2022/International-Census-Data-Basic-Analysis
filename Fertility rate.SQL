#1-Age Specific Average Fertility Rate
SELECT 
  AVG(fertility_rate_15_19) as avg_fertiltiy_rate_15_19,
  AVG(fertility_rate_20_24) as avg_fertiltiy_rate_20_24,
  AVG(fertility_rate_25_29) as avg_fertiltiy_rate_25_29,
  AVG(fertility_rate_30_34) as avg_fertiltiy_rate_30_34,
  AVG(fertility_rate_35_39) as avg_fertiltiy_rate_35_39,
  AVG(fertility_rate_40_44 + fertility_rate_45_49) as avg_fertiltiy_rate_40_49
FROM
  `bigquery-public-data.census_bureau_international.age_specific_fertility_rates`

#2-Countries with highest fertility rate between 15 and 19 years of age
SELECT
    country_name,
    fertility_rate_15_19,
    country_code
  FROM
    `bigquery-public-data.census_bureau_international.age_specific_fertility_rates`
  where year = 2021  
  ORDER BY fertility_rate_15_19 desc
  
  #3-Countries with lowest fertility rate between 15 and 19 years of age
  SELECT
    country_name,
    fertility_rate_15_19,
    country_code
  FROM
    `bigquery-public-data.census_bureau_international.age_specific_fertility_rates`
  where year = 2021  
  ORDER BY fertility_rate_15_19 asc 
  
  #4-Countries with highest fertility rate between 25 and 29 years of age
  SELECT
    country_name,
    fertility_rate_25_29,
    country_code
  FROM
    `bigquery-public-data.census_bureau_international.age_specific_fertility_rates`
  where year = 2021  
  ORDER BY fertility_rate_25_29 desc
  
  #5-
