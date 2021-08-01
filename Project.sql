-- Have a look at the data table
select *
from covid;

-- Check number of countries 
select count(Country) as `Total Country`
from covid;
-- There are 47 countries in the list

-- Explore Percentage of Death Cases
select Country,
	round(`Total Deaths`/`Total Cases`*100,2) as `Death Percent`
from covid
order by `Death Percent` desc;

-- Create table of Death rate for later use
Create table `Covid Deaths`
Select 
	Covid.Country, 
    Covid.`Population`, 
	Covid.`Total Deaths`, 
    Covid.`Total Cases`, 
    round(`Total Deaths`/`Total Cases`*100,2) as `Death Percent`
from Covid
order by `Death Percent` desc;
select *
from `Covid Deaths`;

-- Explore Highest and Lowest Death Percent Country compare to VietNam
select *
from `Covid Deaths`
WHERE
    `Death Percent` = (SELECT 
            Max(`Death Percent`)
        FROM
            `Covid Deaths`)
union
select *
from `Covid Deaths`
WHERE
    `Death Percent` = (SELECT 
            min(`Death Percent`)
        FROM
            `Covid Deaths`)
union
select *
from `Covid Deaths`
where Country='Vietnam';

-- Explore Percentage of Recovered Cases
select *
from Covid;
select 
	Country,
    round(`Total Recovered`/`Total Cases`*100,2) as `Recovered Percent`
from Covid
order by `Recovered percent` desc;

-- Create table of Recovered rate for later use
create table `Covid Recovered`
select
    Covid.Country, 
    Covid.`Population`, 
	Covid.`Total Recovered`, 
    Covid.`Total Cases`, 
    round(`Total Recovered`/`Total Cases`*100,2) as `Recovered Percent`
from Covid
order by `Recovered Percent` desc;
select *
from `Covid Recovered`;

-- Explore Highest and Lowest Recovered Percent Country compare to VietNam
select *
from `Covid Recovered`
WHERE
    `Recovered Percent` = (SELECT 
            Max(`Recovered Percent`)
        FROM
            `Covid Recovered`)
union
select *
from `Covid Recovered`
WHERE
    `Recovered Percent` = (SELECT 
            min(`Recovered Percent`)
        FROM
            `Covid Recovered`)
union
select *
from `Covid Recovered`
where Country='Vietnam';

-- Explore Percentage of Positive Cases
select *
from Covid;
select 
	Country,
    round(`Total Cases`/`Total Tests`*100,2) as `Positive Percent`
from Covid
order by `Positive percent` desc;

-- Create table of Positive rate for later use
create table `Covid Positive`
select
    Covid.Country, 
    Covid.`Population`, 
	Covid.`Total Cases`, 
    Covid.`Total Tests`, 
    round(`Total Cases`/`Total Tests`*100,2) as `Positive Percent`
from Covid
order by `Positive Percent` desc;
select *
from `Covid Positive`;

-- Explore Highest and Lowest Positive Percent Country compare to VietNam
select *
from `Covid Positive`
WHERE
    `Positive Percent` = (SELECT 
            Max(`Positive Percent`)
        FROM
            `Covid Positive`)
union
select *
from `Covid Positive`
WHERE
    `Positive Percent` = (SELECT 
            min(`Positive Percent`)
        FROM
            `Covid Positive`)
union
select *
from `Covid Positive`
where Country='Vietnam';
`covid deaths`
















