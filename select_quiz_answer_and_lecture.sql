-- 1. The example uses a WHERE clause to show the population of 'France'. 
-- Note that strings (pieces of text that are data) should be in 'single quotes';
-- Modify it to show the population of Germany

SELECT population FROM world WHERE name = 'Germany';
  
-- 2. Checking a list The word IN allows us to check if an item is in a list. 
-- The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.
-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT name, population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- 3. Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values).
-- The example below shows countries with an area of 250,000-300,000 sq. km. 
-- Modify it to show the country and the area for countries with an area between 200,000 and 250,000.

SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000;

-- 4. Observe the result of running this SQL command to show the name, 
-- continent and population of all countries.

SELECT name, continent, population FROM world;

-- 5. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name FROM world WHERE population > 200000000;

-- 6. Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, gdp/population from world where population > 200000000;

-- 7. Show the name and population in millions for the countries of the continent 'South America'.
-- Divide the population by 1000000 to get population in millions.

SELECT name, population/1000000 from world where continent = 'South America';

-- 8. Show the name and population for France, Germany, Italy

SELECT name, population from world where name IN ('France', 'Germany', 'Italy');

-- 9. Show the countries which have a name that includes the word 'United'

select name from world where name like '%United%'

-- 10. Two ways to be big: A country is big if it has an area 
-- of more than 3 million sq km or it has a population of more than 250 million.
-- Show the countries that are big by area or big by population. Show name, population and area.

Select name, population, area from world where area > 3000000 or population >250000000

-- 11. Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or 
-- big by population (more than 250 million) but not both. Show name, population and area.

Select name, population, area from world WHERE not(population>250000000 and area>3000000) and (population>250000000 or area>3000000)

-- 12. For South America show population in millions and GDP in billions both to 2 decimal places.

SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000, 2) from world where continent like 'South America';

-- 13. 
