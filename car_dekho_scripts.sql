SELECT * FROM car_reviewing_website.car_dekhoo;

#to get the count of the total cars
select COUNT(*) from car_dekhoo

#Manager asked the employee how many cars are going to be there in 2023
select year, COUNT(*) from car_dekhoo
where year = 2023;

#Manager asked the employee how many cars are available  in 2020,2021 and 2022
select year, COUNT(*) from car_dekhoo
where year IN(2020, 2021, 2022)
group by year
order by year

#Client suggested to print all the cars by year for clear analysis.
select year, COUNT(*) from car_dekhoo
group by year

#Client asked to car dealer agent  how many diesel cars will be there in 2020
select year, COUNT(*) from car_dekhoo
where fuel = 'CNG' AND year = 2020

#Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
select year, COUNT(*) from car_dekhoo
group by year
having COUNT(*) > 100;

#Manager asked employee to count all cars details between 2015 and 2023 in a list format
select year, COUNT(*) from car_dekhoo
where year between 2015 AND 2023
group by year
order by year 

#Print all car details between 2015 and 2023.
select * from car_dekhoo
where year between 2015 AND 2023

#Print all type of fuel cars (Petrol, Diesel and CNG) come by all year.
select Name, fuel, year from car_dekhoo
group by fuel
