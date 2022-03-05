# International-Census-Data-Basic-Analysis
The repository showcases a basic analysis of the census data across the globe. The data used is provided by the United States Census Bureau (hosted by BigQuery) and projects estimates of country populations since 1950. An analysis is done keeping in mind some relevant questions.


# Age and Sex Specific Population.SQL
  This file includes basic analysis on population data wrt age and sex


  1. Countries with largest proportion of under 25 population (absolute and percentage)
  
  (a) In absolute numbers,
  the following countries have the largest under 25 population
  
  ![image](https://user-images.githubusercontent.com/99423745/156882551-e819a71e-0805-4d47-9d21-ecb2ebb4b691.png)
  
  (b) As percent of the total population,
  the following countries top the chart
  
  ![image](https://user-images.githubusercontent.com/99423745/156882969-8dd87800-6063-4b9f-80cb-713f7e433708.png)


  2. Countries with largest Above 49 population (Percentage)
    
  ![image](https://user-images.githubusercontent.com/99423745/156883103-343ca567-5729-4219-9ae2-0c5f47308651.png)

   Meaning that almost one-half of these countries' population comprises of the aged
  
  
  3. Countries with largest female population
  
  ![image](https://user-images.githubusercontent.com/99423745/156883236-621fa951-7c24-4ee6-a284-4f33e43fee66.png)

  The large female population can be because of high population in general (In case of India and China)
  
  
# Fertility rate.SQL
  Fertility rate is the ratio between the number of live births in a year and the whole female population of childbearing age.
  This section deals with fertility rate data across countries
  
  1. Age Specific Average Fertility Rate Globally
  
  ![image](https://user-images.githubusercontent.com/99423745/156883547-e1c30506-7373-43e0-ade9-c55569ae1cce.png)

  The age group 25-29 has the highest fertility rate followed by the group 30-34
  
  
  2. Countries with highest fertility rate between 15 and 19 years of age
  
  ![image](https://user-images.githubusercontent.com/99423745/156883622-4c16ff63-f37d-4fce-bb12-594d230c5a00.png)

  Most African countries have high fertility rates for age 15 to 19
  
  
  3. Countries with lowest fertility rate between 15 and 19 years of age
  
  ![image](https://user-images.githubusercontent.com/99423745/156883698-28e6da6a-355f-4c84-ac0b-d19d796bca1f.png)

  Most countries with low fertility between 15 and 19 are developed countries with good literacy levels
  
  
  4. Countries with highest fertility rate between 25 and 29 years of age
  
  ![image](https://user-images.githubusercontent.com/99423745/156883796-c774cd4f-6046-4b00-ba20-7836daf7e6ba.png)
  
  Even in the 25-29 age group, most African countries are found to have high fertility

# Life Expectancy.SQL
  It refers to the number of years a person can expect to live. By definition, life expectancy is based on an estimate of the average age that members of a particular             population group will be when they die.
  
  
  1. Top 5 Countries with the Highest life expectancy
  
  ![image](https://user-images.githubusercontent.com/99423745/156883956-00c9c250-a35c-4f55-95d0-b2b5ba3e48ae.png)

  Intrestingly, as observed earlier, Japan also has a very high population of age above 49
  
  
  2. Number of Countries with Life expectancy above 80
  
  ![image](https://user-images.githubusercontent.com/99423745/156884033-20ed8189-7ff4-4c86-8f91-2d87a0fc6bea.png)

  
  3. Life expectancy in India and China (sex specific)
  
  ![image](https://user-images.githubusercontent.com/99423745/156884063-2d837ae6-1c2b-41f5-bf03-daa47324dfe1.png)

  Females are observed to have a higher life expectancy and China performs better than India in this indicator (for both sexes)

# Migration.SQL
  Here Migration is taken as net migration. The net migration rate is the difference between the number of immigrants and the number of emigrants (people leaving an area)         throughout the year.
 
 1. Migration from Small Countries (area < 1000)
 
 ![image](https://user-images.githubusercontent.com/99423745/156884247-adce21b4-59e1-4843-9c5e-a41426684dfd.png)

  The net migration rate is positive for them all meaning that more people are migrating to these countries and there are less number of emigrants.
  
  
 2. Average Migration in Countries with Highest Population (China and India) in the past decade (2011-2021)
 
 ![image](https://user-images.githubusercontent.com/99423745/156884386-71953fdb-c2dc-4d95-9b16-25bac1e92019.png)

  Since the rate is negative, it means that more people are leaving these countries. There are more number of emigrants.

# Mortality Rate.SQL
  It is a measure of the number of deaths in a particular population, scaled to the size of that population, per unit of time.
  Birth rate is the number of live births per thousand of population per year.
  Infant Mortality refers to the death of an infant before reaching a specific age (mostly 1).
  
  1. Infant Mortality and other indicators in countries with highest Infant Mortality
  
  ![image](https://user-images.githubusercontent.com/99423745/156884707-95e63733-1dd8-46e9-b3d3-62382c23c091.png)

  Most of the countries with high infant mortality rates are underdeveloped nations with negative net migration (people are migrating from these countries)
  
  
  2. Average Infant Mortality in the 21st century
  
  ![image](https://user-images.githubusercontent.com/99423745/156884780-b68a2783-a8ba-4bd5-a8c0-1bbe99f355c5.png)

  
  3. Countries with the Highest Birth Rate in 2021
  
  ![image](https://user-images.githubusercontent.com/99423745/156884811-673bb509-e385-4fc5-8bfa-02b91797d71e.png)

  
  4. Countries with the Lowest Death Rate in 2021
  
  ![image](https://user-images.githubusercontent.com/99423745/156884835-fca0abae-589e-44f7-af58-95574f9df05e.png)

# Overview of the data.SQL
  
  1. Total number of geographical areas included in the data
  
  ![image](https://user-images.githubusercontent.com/99423745/156884948-9a52a9d4-ebaa-45b9-8fe0-e6e0977681fd.png)

  
  2. Largest Geographical Area
  
  ![image](https://user-images.githubusercontent.com/99423745/156885006-2b0cd9b8-4428-420a-a8ad-f297d816ab07.png)

  
  3. Smallest Geographical Area
  
  ![image](https://user-images.githubusercontent.com/99423745/156885042-3cc063ce-1850-4425-b702-9ea5bfe6c187.png)

  
  4. Population and Area of the largest and the smallest geographical area
  
  ![image](https://user-images.githubusercontent.com/99423745/156885084-0cf43bd8-f793-4a13-bb86-da70b8c2d918.png)
  
  
  5. Population of countries with largest areas
  
  ![image](https://user-images.githubusercontent.com/99423745/156885117-1b563fa9-f6bb-42d5-9d4d-90471be60602.png)
  
  
  6. Number of Countries starting with A
  
  ![image](https://user-images.githubusercontent.com/99423745/156885210-576914b7-cc2c-4c25-ad0c-ccad431f2993.png)
  
