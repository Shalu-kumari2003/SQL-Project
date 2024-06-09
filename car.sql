use cars;
--READ DATA--
SELECT * FROM cars.`car dekho`;
-- Total Cars: To get a cout of total records--
select count(*) from cars.`car dekho`;
-- manager asked the employee How many cars will be available in 2023?...
select count(*) from cars.`car dekho` where year = 2023;
-- The manager asked the employee How many Cars is available in 2020, 2021,2022...
select count(*) from cars.`car dekho` where year = 2020;
select count(*) from cars.`car dekho` where year = 2021;
select count(*) from cars.`car dekho` where year = 2022;
-- Group By--
select count(*) from cars.`car dekho` where year in (2020, 2021,2022) group by year;
-- Clint asked me to print the total of all cars by year. I don't see all the details.--
select year, count(*) from cars.`car dekho` group by year;
-- Clint asked to car dealer agent how many diesel cars will there be in 2020?.. 
select count(*) from cars.`car dekho` where year = 2020 and fuel = "Diesel";
-- Client requested a car dealer agent How many petrol cars will there be in 2020?..
select count(*) from cars.`car dekho` where year = 2020 and fuel = "Petrol";
-- The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all years--
select year, count(*) from cars.`car dekho` where fuel = "Petrol" group by year;
select year, count(*) from cars.`car dekho` where fuel = "Diesel" group by year;
select year, count(*) from cars.`car dekho` where fuel = "CNG" group by year;

-- manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from cars.`car dekho` group by year having count(*)>100;
select year, count(*) from cars.`car dekho` group by year having count(*)<50;

-- The manager said to the employee All cars count details between 2015 and 2023: we need a complete list.--
select  count(*) from cars.`car dekho` where  year between 2015 and 2023;

-- The manager said to the employeee All cars details between 2015 to 2023 we need complete list--
select*from cars.`car dekho` where  year between 2015 and 2023;