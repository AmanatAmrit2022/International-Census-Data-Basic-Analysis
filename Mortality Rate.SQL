#1-Infant Mortality and other indicators in countries with highest Infant Mortality
SELECT 
DISTINCT mor.country_name, 
         mor.infant_mortality, 
         growth.crude_birth_rate,
         growth.crude_death_rate, 
         growth.net_migration
FROM
`bigquery-public-data.census_bureau_international.mortality_life_expectancy` mor
FULL OUTER JOIN
`bigquery-public-data.census_bureau_international.birth_death_growth_rates` growth
ON mor.country_name = growth.country_name
WHERE 
mor.year = 2021 AND growth.year = 2021
ORDER BY 
mor.infant_mortality desc 

#2-Average Infant Mortality in the 21st century
SELECT
ROUND(AVG(infant_mortality),2) as average_infant_mortality
FROM
`bigquery-public-data.census_bureau_international.mortality_life_expectancy`
WHERE year BETWEEN 2000 AND 2021

#3-Countries with the Highest Birth Rate in 2021
SELECT 
    country_name,
    crude_birth_rate as birth_rate
FROM 
    `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
WHERE 
    crude_birth_rate = (
        SELECT 
            MAX(crude_birth_rate)
        FROM
            `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
        where year = 2021)

#4-Countries with the Lowest Death Rate in 2021
SELECT 
    country_name,
    crude_death_rate as death_rate
FROM 
    `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
WHERE crude_death_rate = (
        SELECT 
            MIN(crude_death_rate)
        FROM
            `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
        where year = 2021)
