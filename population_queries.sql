-- This is the first query:

SELECT DISTINCT year
FROM population_years;

-- What is the largest population size for Gabon in this dataset?:

SELECT country AS 'Country', population AS 'Population (in millions)'
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;

-- Which 10 countries had the lowest population in 2005?:

SELECT country AS 'Country', population AS 'Population (in millions)'
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

-- Which countries had a population of over 100 million in 2010?

SELECT DISTINCT country AS 'Country', ROUND(population, 2) AS 'Population (in millions)'
FROM population_years
WHERE year = 2010 AND population >= 100
ORDER BY population DESC;

-- How many countries in this dataset contain the word "Islands" in their name?

SELECT COUNT(DISTINCT country)
FROM population_years
WHERE country LIKE '%Islands%';

-- What is the difference in the population of Indonesia between 2000 and 2010?

SELECT country, year, population
FROM population_years
WHERE country = 'Indonesia' AND (year = 2000 OR year = 2010);
