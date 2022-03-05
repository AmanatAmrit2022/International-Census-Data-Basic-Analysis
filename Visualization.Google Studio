#These queries are simply meant for visualization. The results are shown in the readme file under 'Visualization'

#1-Age Specific Fertility Rate in India between 2000 and 2021
SELECT
    year,
    fertility_rate_15_19,
    fertility_rate_20_24,
    fertility_rate_25_29,
    fertility_rate_30_34,
    fertility_rate_35_39,
    fertility_rate_40_44,
    fertility_rate_45_49
FROM
   `bigquery-public-data.census_bureau_international.age_specific_fertility_rates`
WHERE
    country_name = 'India' AND (year BETWEEN 2000 AND 2021)

#2-Countries Facing Emigration
SELECT
    mig.country_name,
    mig.net_migration
FROM
    (SELECT
        country_name,
        net_migration
    FROM
        `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
    WHERE
        year = 2021
    AND
        net_migration < 0) mig
ORDER BY mig.net_migration asc
